// Frame-level u2fhid tests. readFrame() has no SEQ validation and no
// duplicate-frame detection, so the BLE bridge must not leave stale frames in
// the read stream. These tests document the framing assumptions without
// requiring platform-side packet deduplication.

package u2fhid

import (
	"bytes"
	"encoding/binary"
	"errors"
	"testing"
)

type fakeRWC struct {
	frames     [][]byte
	writeCalls int
}

func (f *fakeRWC) Read(p []byte) (int, error) {
	if len(f.frames) == 0 {
		return 0, errors.New("no more scripted frames")
	}
	next := f.frames[0]
	f.frames = f.frames[1:]
	return copy(p, next), nil
}

func (f *fakeRWC) Write(p []byte) (int, error) { f.writeCalls++; return len(p), nil }
func (f *fakeRWC) Close() error                { return nil }

func makeInitFrame(cmd byte, payloadLen int, payload []byte) []byte {
	buf := bytes.NewBuffer(make([]byte, 0, 64))
	_ = binary.Write(buf, binary.BigEndian, cid)
	buf.WriteByte(cmd)
	_ = binary.Write(buf, binary.BigEndian, uint16(payloadLen&0xFFFF))
	const initPayloadSize = 64 - 7
	chunk := payload
	if len(chunk) > initPayloadSize {
		chunk = chunk[:initPayloadSize]
	}
	buf.Write(chunk)
	for buf.Len() < 64 {
		buf.WriteByte(0xEE)
	}
	return buf.Bytes()
}

func makeContFrame(seq byte, payload []byte) []byte {
	buf := bytes.NewBuffer(make([]byte, 0, 64))
	_ = binary.Write(buf, binary.BigEndian, cid)
	buf.WriteByte(seq)
	const contPayloadSize = 64 - 5
	chunk := payload
	if len(chunk) > contPayloadSize {
		chunk = chunk[:contPayloadSize]
	}
	buf.Write(chunk)
	for buf.Len() < 64 {
		buf.WriteByte(0xEE)
	}
	return buf.Bytes()
}

const bitboxCMD byte = 0x80 | 0x40 | 0x01

func TestReadFrame_SingleInitFrame(t *testing.T) {
	payload := []byte("hello world")
	rwc := &fakeRWC{frames: [][]byte{makeInitFrame(bitboxCMD, len(payload), payload)}}
	got, err := NewCommunication(rwc, bitboxCMD).ReadFrame()
	if err != nil {
		t.Fatalf("unexpected error: %v", err)
	}
	if string(got) != "hello world" {
		t.Fatalf("payload mismatch: %q", got)
	}
}

func TestReadFrame_TwoFrameMessage(t *testing.T) {
	payload := bytes.Repeat([]byte{0xAB}, 100)
	rwc := &fakeRWC{frames: [][]byte{
		makeInitFrame(bitboxCMD, len(payload), payload[:57]),
		makeContFrame(0, payload[57:]),
	}}
	got, err := NewCommunication(rwc, bitboxCMD).ReadFrame()
	if err != nil {
		t.Fatalf("unexpected error: %v", err)
	}
	if !bytes.Equal(got, payload) {
		t.Fatal("payload mismatch")
	}
}

// readFrame has no SEQ validation: a duplicate cont frame is silently
// appended. The next ReadFrame() then misparses the leftover bytes as a new
// message and fails on CID/CMD mismatch. The BLE bridge must keep its request
// boundaries clean so stale notifications cannot leak into the next response.
func TestReadFrame_DuplicateContFrame_DesyncsFollowingMessage(t *testing.T) {
	payload := bytes.Repeat([]byte{0xAB}, 100)
	contFrame := makeContFrame(0, payload[57:])
	rwc := &fakeRWC{frames: [][]byte{
		makeInitFrame(bitboxCMD, len(payload), payload[:57]),
		contFrame,
		contFrame, // ← retransmit
		makeInitFrame(bitboxCMD, 4, []byte{0xCA, 0xFE, 0xBA, 0xBE}),
	}}
	c := NewCommunication(rwc, bitboxCMD)

	if _, err := c.ReadFrame(); err != nil {
		t.Fatalf("first ReadFrame: %v", err)
	}
	if _, err := c.ReadFrame(); err == nil {
		t.Fatal("expected desync error on second ReadFrame after duplicate cont frame")
	}
}

// Sequential single-frame responses with distinct content (e.g. encrypted
// notready/ack polls during a multi-page sign) reassemble correctly.
func TestReadFrame_HundredSequentialPolls(t *testing.T) {
	const polls = 100
	replies := make([][]byte, polls)
	for i := 0; i < polls; i++ {
		payload := make([]byte, 17)
		payload[0] = 0x01 // hwwRspNotready
		binary.BigEndian.PutUint64(payload[1:9], uint64(i))
		replies[i] = makeInitFrame(bitboxCMD, len(payload), payload)
	}
	c := NewCommunication(&fakeRWC{frames: replies}, bitboxCMD)
	for i := 0; i < polls; i++ {
		got, err := c.ReadFrame()
		if err != nil {
			t.Fatalf("poll %d: %v", i, err)
		}
		if got[0] != 0x01 {
			t.Fatalf("poll %d: expected notready, got %x", i, got[0])
		}
	}
}

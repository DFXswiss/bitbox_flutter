// Models the BLE per-packet dedup logic from ios/Classes/Bluetooth.swift in
// pure Go so we can unit-test the algorithm without a Swift test target.
// The contains-check must run BEFORE seenPackets.removeAll() on a new init
// frame; the inverted order silently lets BLE retransmits of init frames
// through, which is what 99% of device responses are (single-frame replies).

package u2fhid

import (
	"bytes"
	"os"
	"testing"
)

type dedupSet struct{ seen [][]byte }

func (d *dedupSet) contains(p []byte) bool {
	for _, s := range d.seen {
		if bytes.Equal(s, p) {
			return true
		}
	}
	return false
}

func (d *dedupSet) insert(p []byte) { d.seen = append(d.seen, append([]byte(nil), p...)) }
func (d *dedupSet) reset()          { d.seen = nil }

// Current shipping order: contains → reset (on init) → insert.
func fixedAlgorithm(seen *dedupSet, data []byte) bool {
	if seen.contains(data) {
		return false
	}
	if len(data) > 4 && (data[4]&0x80) != 0 {
		seen.reset()
	}
	seen.insert(data)
	return true
}

// Pre-fix order: reset (on init) → contains → insert. Kept as a regression
// fence — if this stops matching the broken algorithm's outcome, this file
// needs updating too.
func brokenAlgorithm(seen *dedupSet, data []byte) bool {
	if len(data) > 4 && (data[4]&0x80) != 0 {
		seen.reset()
	}
	if seen.contains(data) {
		return false
	}
	seen.insert(data)
	return true
}

func newInitFrame(payload byte) []byte {
	f := []byte{0xFF, 0x00, 0x00, 0x00, 0xC1, 0x00, 0x01, payload}
	for len(f) < 64 {
		f = append(f, 0xEE)
	}
	return f
}

func TestFixedDedup_DropsInitFrameRetransmit(t *testing.T) {
	seen := &dedupSet{}
	f := newInitFrame(0x01)
	if !fixedAlgorithm(seen, f) {
		t.Fatal("first arrival must be accepted")
	}
	if fixedAlgorithm(seen, f) {
		t.Fatal("retransmit must be dropped")
	}
}

func TestBrokenDedup_AcceptsRetransmit(t *testing.T) {
	seen := &dedupSet{}
	f := newInitFrame(0x01)
	if !brokenAlgorithm(seen, f) || !brokenAlgorithm(seen, f) {
		t.Fatal("broken algorithm should accept both arrivals")
	}
}

func TestFixedDedup_AcceptsDistinctInitFrames(t *testing.T) {
	seen := &dedupSet{}
	if !fixedAlgorithm(seen, newInitFrame(0x01)) || !fixedAlgorithm(seen, newInitFrame(0x02)) {
		t.Fatal("two distinct init frames must both be accepted")
	}
}

func TestFixedDedup_InitFrameResetsWindowForLaterCont(t *testing.T) {
	seen := &dedupSet{}
	initA := newInitFrame(0x01)
	cont := append([]byte{0xFF, 0x00, 0x00, 0x00, 0x00, 0xAA, 0xBB}, make([]byte, 57)...)
	initB := newInitFrame(0x02)

	if !fixedAlgorithm(seen, initA) ||
		!fixedAlgorithm(seen, cont) ||
		!fixedAlgorithm(seen, initB) ||
		!fixedAlgorithm(seen, cont) {
		t.Fatal("identical cont after a new init must be accepted (window reset)")
	}
}

func TestFixedDedup_DropsDuplicateContInsideOneMessage(t *testing.T) {
	seen := &dedupSet{}
	initA := newInitFrame(0x01)
	cont := append([]byte{0xFF, 0x00, 0x00, 0x00, 0x00, 0xAA, 0xBB}, make([]byte, 57)...)
	if !fixedAlgorithm(seen, initA) || !fixedAlgorithm(seen, cont) {
		t.Fatal("first arrivals must be accepted")
	}
	if fixedAlgorithm(seen, cont) {
		t.Fatal("duplicate cont within the same message must be dropped")
	}
}

func TestFixedDedup_SetStaysBoundedAcrossPages(t *testing.T) {
	seen := &dedupSet{}
	for i := 0; i < 100; i++ {
		fixedAlgorithm(seen, newInitFrame(byte(i%256)))
	}
	if len(seen.seen) > 5 {
		t.Fatalf("dedup set grew: %d entries", len(seen.seen))
	}
}

// Guards against accidental reversion of the contains-before-removeAll order
// in the shipping Bluetooth.swift.
func TestSwiftSourceMatchesFixedAlgorithm(t *testing.T) {
	src, err := os.ReadFile("../../ios/Classes/Bluetooth.swift")
	if err != nil {
		t.Fatalf("read Bluetooth.swift: %v", err)
	}
	containsIdx := bytes.Index(src, []byte("ctx.seenPackets.contains(data)"))
	if containsIdx == -1 {
		t.Fatal("contains check not found in Bluetooth.swift")
	}
	rest := src[containsIdx:]
	if bytes.Index(rest, []byte("ctx.seenPackets.removeAll()")) == -1 {
		t.Fatal("expected removeAll() AFTER the contains check inside didUpdateValueFor")
	}
}

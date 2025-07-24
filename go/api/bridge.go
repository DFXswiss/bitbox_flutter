package main

//
///*
//#include <stdlib.h>
//
//// Callback-Typen definieren
//typedef int (*read_callback)(char* bufStr);
//typedef int (*write_callback)(const void* buf, int size);
//typedef int (*close_callback)();
//
//static inline void callReadCallback(char* bufStr, read_callback cb) {
//     cb(bufStr);
//}
//
//static inline void callCloseCallback(close_callback cb) {
//     cb();
//}
//*/
//import "C"
//import (
//	"io"
//	"sync"
//	"unsafe"
//)
//
//// CGoBridge implementiert io.ReadWriteCloser über C-Callbacks
//type CGoBridge struct {
//	readCb  unsafe.Pointer
//	writeCb unsafe.Pointer
//	closeCb unsafe.Pointer
//	context unsafe.Pointer
//
//	readBuf []byte
//	mu      sync.Mutex
//}
//
//// Read implementiert io.Reader
//func (b *CGoBridge) Read(p []byte) (n int, err error) {
//	b.mu.Lock()
//	defer b.mu.Unlock()
//
//	if b.readCb == nil {
//		return 0, io.ErrClosedPipe
//	}
//
//	// Rufen Sie den C-Callback auf
//	result := C.int(0)
//	if len(p) > 0 {
//		result = C.read_callback(
//			C.read_callback(b.readCb),
//			unsafe.Pointer(&p[0]),
//			C.int(len(p)),
//		)
//	}
//
//	// Verarbeiten Sie das Ergebnis
//	if result < 0 {
//		return 0, io.ErrUnexpectedEOF
//	}
//	if result == 0 {
//		return 0, io.EOF
//	}
//
//	return int(result), nil
//}
//
//// Write implementiert io.Writer
//func (b *CGoBridge) Write(p []byte) (n int, err error) {
//	b.mu.Lock()
//	defer b.mu.Unlock()
//
//	if b.writeCb == nil {
//		return 0, io.ErrClosedPipe
//	}
//
//	// Rufen Sie den C-Callback auf
//	result := C.int(0)
//	if len(p) > 0 {
//		result = C.write_callback(
//			C.write_callback(b.writeCb),
//			unsafe.Pointer(&p[0]),
//			C.int(len(p)),
//		)
//	}
//
//	// Verarbeiten Sie das Ergebnis
//	if result < 0 {
//		return 0, io.ErrShortWrite
//	}
//
//	return int(result), nil
//}
//
//// Close implementiert io.Closer
//func (b *CGoBridge) Close() error {
//	b.mu.Lock()
//	defer b.mu.Unlock()
//
//	if b.closeCb == nil {
//		return nil // Bereits geschlossen
//	}
//
//	// Rufen Sie den C-Callback auf
//	result := C.close_callback(
//		C.close_callback(b.closeCb),
//	)
//
//	// Setzen Sie die Callbacks auf nil, um weitere Aufrufe zu verhindern
//	b.readCb = nil
//	b.writeCb = nil
//	b.closeCb = nil
//
//	if result != 0 {
//		return io.ErrClosedPipe
//	}
//
//	return nil
//}
//
////export NewCGoBridge
//func NewCGoBridge(
//	readCallback unsafe.Pointer,
//	writeCallback unsafe.Pointer,
//	closeCallback unsafe.Pointer,
//	ctx unsafe.Pointer,
//) unsafe.Pointer {
//	bridge := &CGoBridge{
//		readCb:  readCallback,
//		writeCb: writeCallback,
//		closeCb: closeCallback,
//		context: ctx,
//		readBuf: make([]byte, 4096),
//	}
//
//	return unsafe.Pointer(bridge)
//}

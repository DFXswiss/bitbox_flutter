package api

import "fmt"

// recoverPanic converts an unhandled panic from the underlying SDK into a
// logged error so the gomobile binding can return a zero value to the caller
// instead of propagating an Objective-C/JNI exception that would terminate
// the host engine. Use it as a deferred call in every exported function.
func recoverPanic(name string) {
	if r := recover(); r != nil {
		fmt.Printf("[%s] recovered from panic: %v\n", name, r)
	}
}

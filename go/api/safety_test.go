package api

import "testing"

// We can't reliably swap os.Stdout from within `go test`, so the panic-log
// output is verified by inspection. These tests pin the programmatic
// contract: recoverPanic suppresses the panic and lets the caller observe
// zero values.

func TestRecoverPanic_SuppressesPanicAndKeepsControlFlow(t *testing.T) {
	recovered := func() (ok bool) {
		defer recoverPanic("Caller")
		defer func() { ok = true }()
		panic("synthetic")
	}()
	if !recovered {
		t.Fatal("deferred assignment never ran — recoverPanic did not catch")
	}
}

func TestRecoverPanic_DoesNotAlterCleanReturn(t *testing.T) {
	value := func() int {
		defer recoverPanic("HappyPath")
		return 42
	}()
	if value != 42 {
		t.Fatalf("expected 42, got %d", value)
	}
}

// Recovered panics leave the calling exported function returning the zero
// value (false / "" / nil byteslice). Callers must treat zero returns as
// failures, since they're indistinguishable from a clean negative result.
func TestRecoverPanic_LeavesZeroValueOnPanic(t *testing.T) {
	got := func() (out bool) {
		defer recoverPanic("Panicker")
		panic("kaboom")
	}()
	if got {
		t.Fatalf("expected zero value, got %v", got)
	}
}

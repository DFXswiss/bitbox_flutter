package api

import (
	"errors"
	"os"
	"strings"
	"testing"
)

// 60-second BLE read timeout is required for long BitBox confirmation flows
// (typed-data signing, multi-output PSBTs). The previous 10s timeout
// regressed signing on real hardware and must not come back.
func TestIOSBluetoothKeeps60sReadTimeout(t *testing.T) {
	contentBytes, err := os.ReadFile("../../ios/Classes/Bluetooth.swift")
	if err != nil {
		t.Fatal(err)
	}
	content := string(contentBytes)

	if !strings.Contains(content, "let waitResult = ctx.semaphore.wait(timeout: .now() + 60)") {
		t.Fatal("Bluetooth.swift must keep the 60s BLE read timeout for long BitBox confirmations")
	}
	if strings.Contains(content, "read timed out after 10s") || strings.Contains(content, ".now() + 10") {
		t.Fatal("Bluetooth.swift must not regress to the old 10s BLE read timeout")
	}
}

// The Go binding only learns a device went away when Swift tells it. Both
// teardown and re-connection must release it: the peripheral can drop on its
// own, and connecting to a second one does not rebind until initBitBox. Either
// gap leaves the binding reporting the previous device's firmware version and
// status to a host that is gating on them.
func TestIOSBluetoothReleasesTheDeviceOnDisconnectAndConnect(t *testing.T) {
	for _, function := range []string{
		"func handleDisconnect() {",
		"func connect(to peripheralID: UUID) {",
	} {
		body, err := swiftFunctionBody(t, "../../ios/Classes/Bluetooth.swift", function)
		if err != nil {
			t.Fatalf("%s: %v", function, err)
		}
		if !containsCall(body, "ApiReleaseDevice()") {
			t.Fatalf("%s must call ApiReleaseDevice(), or a device that is gone keeps answering", function)
		}
	}
}

// close() must keep routing through handleDisconnect, which is what performs
// the release.
func TestIOSPluginCloseTearsDownThroughHandleDisconnect(t *testing.T) {
	body, err := swiftFunctionBody(
		t,
		"../../ios/Classes/BitboxFlutterPlugin.swift",
		"private func close(result: @escaping FlutterResult) {",
	)
	if err != nil {
		t.Fatal(err)
	}
	if !containsCall(body, "bluetoothManager.handleDisconnect()") {
		t.Fatal("close must call handleDisconnect, which is what releases the Go-side device")
	}
}

// Android's half of the same invariant. Closing must release, and opening must
// release BEFORE it rebinds — connectBitBox calls Api.getDevice on the success
// path, so a release after it would drop the device that was just bound.
func TestAndroidReleasesTheDeviceOnCloseAndConnect(t *testing.T) {
	const dir = "../../android/src/main/kotlin/com/cakewallet/bitbox_flutter/operations/"

	for _, file := range []string{"CloseOperation.kt", "ConnectBitBoxOperation.kt"} {
		body, err := kotlinMethodBody(t, dir+file, "override fun onMethodCall(")
		if err != nil {
			t.Fatalf("%s: %v", file, err)
		}
		if !containsCall(body, "Api.releaseDevice()") {
			t.Fatalf("%s must call Api.releaseDevice() in onMethodCall, or a device that is gone keeps answering", file)
		}
	}

	body, err := kotlinMethodBody(t, dir+"ConnectBitBoxOperation.kt", "override fun onMethodCall(")
	if err != nil {
		t.Fatal(err)
	}
	if strings.Index(body, "Api.releaseDevice()") > strings.Index(body, "connectBitBox(") {
		t.Fatal("ConnectBitBoxOperation must release before connectBitBox rebinds, or it drops the device it just bound")
	}
}

// kotlinMethodBody returns the source between a method's signature and the
// first closing brace at the enclosing indentation, failing loudly rather than
// degrading into a file-wide search.
func kotlinMethodBody(t *testing.T, path, signature string) (string, error) {
	t.Helper()

	contentBytes, err := os.ReadFile(path)
	if err != nil {
		return "", err
	}

	_, after, found := strings.Cut(string(contentBytes), signature)
	if !found {
		return "", errors.New("method not found — this source assertion needs updating")
	}
	body, _, closed := strings.Cut(after, "\n    }")
	if !closed {
		return "", errors.New("could not find the end of the method — this source assertion needs updating")
	}
	return body, nil
}

// swiftFunctionBody returns the source between a function's opening brace and
// the first closing brace at the enclosing indentation. It fails rather than
// returning a best guess, so a reformat degrades these guards loudly instead of
// silently widening them to the whole file.
func swiftFunctionBody(t *testing.T, path, signature string) (string, error) {
	t.Helper()

	contentBytes, err := os.ReadFile(path)
	if err != nil {
		return "", err
	}

	_, after, found := strings.Cut(string(contentBytes), signature)
	if !found {
		return "", errors.New("function not found — this source assertion needs updating")
	}
	body, _, closed := strings.Cut(after, "\n    }")
	if !closed {
		return "", errors.New("could not find the end of the function — this source assertion needs updating")
	}
	return body, nil
}

// containsCall reports whether the body actually calls target. Line comments
// are stripped first, so neither commenting the call out nor merely mentioning
// it in a trailing comment satisfies the guard — both are likelier than the
// call simply vanishing.
func containsCall(body, target string) bool {
	for _, line := range strings.Split(body, "\n") {
		code, _, _ := strings.Cut(line, "//")
		if strings.Contains(code, target) {
			return true
		}
	}
	return false
}

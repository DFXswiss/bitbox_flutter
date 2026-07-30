package api

import (
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

// Every disconnect must release the Go-side device, not just an explicit
// close(): the peripheral can drop on its own and open() does not rebind, so
// the binding would otherwise keep reporting the previous device's firmware
// version and status to a host that is gating on them.
func TestIOSBluetoothReleasesTheDeviceOnDisconnect(t *testing.T) {
	contentBytes, err := os.ReadFile("../../ios/Classes/Bluetooth.swift")
	if err != nil {
		t.Fatal(err)
	}
	content := string(contentBytes)

	_, after, found := strings.Cut(content, "func handleDisconnect() {")
	if !found {
		t.Fatal("Bluetooth.swift must keep handleDisconnect as the single teardown path")
	}
	body, _, _ := strings.Cut(after, "\n    }")
	if !strings.Contains(body, "ApiReleaseDevice()") {
		t.Fatal("handleDisconnect must call ApiReleaseDevice() so a dropped peripheral cannot keep answering")
	}
}

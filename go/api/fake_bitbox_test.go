package api

import (
	"encoding/hex"
	"errors"
	"math/big"
	"reflect"
	"slices"
	"sync"
	"testing"

	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware"
	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware/messages"
	"github.com/BitBoxSwiss/bitbox02-api-go/util/semver"
	"github.com/btcsuite/btcd/btcutil/psbt"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/rlp"
)

type fakeBitboxDevice struct {
	initErr error

	channelHash         string
	channelHashOk       bool
	channelHashVerified *bool

	status firmware.Status

	// version is nil when the device has not reported one yet, which makes
	// Version() panic exactly like the SDK does before Init.
	version *semver.SemVer

	deviceInfo         *firmware.DeviceInfo
	deviceInfoErr      error
	rootFingerprint    []byte
	rootFingerprintErr error

	supportsETH       bool
	supportsLTC       bool
	supportsBluetooth bool
	supportedERC20    map[string]bool

	ethPubResult              string
	ethPubErr                 error
	ethSignResult             []byte
	ethSignErr                error
	ethSignEIP1559Result      []byte
	ethSignEIP1559Err         error
	ethSignMessageResult      []byte
	ethSignMessageErr         error
	ethSignTypedMessageResult []byte
	ethSignTypedMessageErr    error

	btcXPubResult       string
	btcXPubErr          error
	btcSignPSBTErr      error
	btcSignMessageSig   []byte
	btcSignMessageErr   error
	panicOnETHSignTyped bool

	calls []string
}

func (f *fakeBitboxDevice) Init() error {
	f.calls = append(f.calls, "Init")
	return f.initErr
}

func (f *fakeBitboxDevice) ChannelHash() (string, bool) {
	f.calls = append(f.calls, "ChannelHash")
	return f.channelHash, f.channelHashOk
}

func (f *fakeBitboxDevice) ChannelHashVerify(ok bool) {
	f.calls = append(f.calls, "ChannelHashVerify")
	f.channelHashVerified = &ok
}

func (f *fakeBitboxDevice) Status() firmware.Status {
	f.calls = append(f.calls, "Status")
	return f.status
}

func (f *fakeBitboxDevice) Version() *semver.SemVer {
	f.calls = append(f.calls, "Version")
	if f.version == nil {
		panic("version not set; Init() must be called first")
	}
	return f.version
}

func (f *fakeBitboxDevice) DeviceInfo() (*firmware.DeviceInfo, error) {
	f.calls = append(f.calls, "DeviceInfo")
	return f.deviceInfo, f.deviceInfoErr
}

func (f *fakeBitboxDevice) RootFingerprint() ([]byte, error) {
	f.calls = append(f.calls, "RootFingerprint")
	return f.rootFingerprint, f.rootFingerprintErr
}

func (f *fakeBitboxDevice) SupportsETH(chainID uint64) bool {
	f.calls = append(f.calls, "SupportsETH")
	return f.supportsETH && chainID != 0
}

func (f *fakeBitboxDevice) SupportsLTC() bool {
	f.calls = append(f.calls, "SupportsLTC")
	return f.supportsLTC
}

func (f *fakeBitboxDevice) SupportsBluetooth() bool {
	f.calls = append(f.calls, "SupportsBluetooth")
	return f.supportsBluetooth
}

func (f *fakeBitboxDevice) SupportsERC20(contractAddress string) bool {
	f.calls = append(f.calls, "SupportsERC20")
	return f.supportedERC20[contractAddress]
}

func (f *fakeBitboxDevice) ETHPub(uint64, []uint32, messages.ETHPubRequest_OutputType, bool, []byte) (string, error) {
	f.calls = append(f.calls, "ETHPub")
	return f.ethPubResult, f.ethPubErr
}

func (f *fakeBitboxDevice) ETHSign(uint64, []uint32, uint64, *big.Int, uint64, [20]byte, *big.Int, []byte, messages.ETHAddressCase) ([]byte, error) {
	f.calls = append(f.calls, "ETHSign")
	return f.ethSignResult, f.ethSignErr
}

func (f *fakeBitboxDevice) ETHSignEIP1559(uint64, []uint32, uint64, *big.Int, *big.Int, uint64, [20]byte, *big.Int, []byte, messages.ETHAddressCase) ([]byte, error) {
	f.calls = append(f.calls, "ETHSignEIP1559")
	return f.ethSignEIP1559Result, f.ethSignEIP1559Err
}

func (f *fakeBitboxDevice) ETHSignMessage(uint64, []uint32, []byte) ([]byte, error) {
	f.calls = append(f.calls, "ETHSignMessage")
	return f.ethSignMessageResult, f.ethSignMessageErr
}

func (f *fakeBitboxDevice) ETHSignTypedMessage(uint64, []uint32, []byte) ([]byte, error) {
	f.calls = append(f.calls, "ETHSignTypedMessage")
	if f.panicOnETHSignTyped {
		panic("simulated typed-data panic")
	}
	return f.ethSignTypedMessageResult, f.ethSignTypedMessageErr
}

func (f *fakeBitboxDevice) BTCXPub(messages.BTCCoin, []uint32, messages.BTCPubRequest_XPubType, bool) (string, error) {
	f.calls = append(f.calls, "BTCXPub")
	return f.btcXPubResult, f.btcXPubErr
}

func (f *fakeBitboxDevice) BTCSignPSBT(messages.BTCCoin, *psbt.Packet, *firmware.PSBTSignOptions) error {
	f.calls = append(f.calls, "BTCSignPSBT")
	return f.btcSignPSBTErr
}

func (f *fakeBitboxDevice) BTCSignMessage(messages.BTCCoin, *messages.BTCScriptConfigWithKeypath, []byte) (*firmware.BTCSignMessageResult, error) {
	f.calls = append(f.calls, "BTCSignMessage")
	return &firmware.BTCSignMessageResult{Signature: f.btcSignMessageSig}, f.btcSignMessageErr
}

// withFakeBitbox installs a fake for the duration of the test. It restores the
// synthetic-version flag along with the device, since the two are one piece of
// state: leaving the flag set would silently empty FirmwareVersion for every
// later test in the package.
func withFakeBitbox(t *testing.T, fake *fakeBitboxDevice) {
	t.Helper()
	previousDevice, previousSynthetic := currentDevice()
	setDevice(fake, false)
	t.Cleanup(func() {
		setDevice(previousDevice, previousSynthetic)
	})
}

func TestFakeBitboxHarnessSimulatesPairingAndCapabilities(t *testing.T) {
	verified := false
	fake := &fakeBitboxDevice{
		channelHash:         "PAIR-CODE",
		channelHashOk:       true,
		channelHashVerified: &verified,
		status:              firmware.StatusInitialized,
		version:             semver.NewSemVer(9, 26, 4),
		deviceInfo:          &firmware.DeviceInfo{Name: "Simulated BitBox"},
		rootFingerprint:     []byte{0x01, 0x02, 0x03, 0x04},
		supportsETH:         true,
		supportsLTC:         true,
		supportsBluetooth:   true,
		supportedERC20:      map[string]bool{"0xToken": true},
	}
	withFakeBitbox(t, fake)

	if !InitDevice() {
		t.Fatal("expected simulated init to succeed")
	}
	if got := GetChannelHash(); got != "PAIR-CODE" {
		t.Fatalf("expected channel hash, got %q", got)
	}
	ChannelHashVerify(true)
	if fake.channelHashVerified == nil || !*fake.channelHashVerified {
		t.Fatal("expected simulated channel hash confirmation")
	}
	if !SupportsETH(1) || !SupportsLTC() || !SupportsBluetooth() || !SupportsERC20("0xToken") {
		t.Fatal("expected simulated capabilities to be exposed")
	}
	if got := DeviceInfo().Name; got != "Simulated BitBox" {
		t.Fatalf("expected simulated device info, got %q", got)
	}
	if got := DeviceStatus(); got != string(firmware.StatusInitialized) {
		t.Fatalf("expected simulated device status, got %q", got)
	}
	// The `v` prefix is added by FirmwareVersion; semver.String() omits it.
	if got := FirmwareVersion(); got != "v9.26.4" {
		t.Fatalf("expected simulated firmware version, got %q", got)
	}
	if got := GetMasterFingerprint(); !reflect.DeepEqual(got, []byte{0x01, 0x02, 0x03, 0x04}) {
		t.Fatalf("expected simulated root fingerprint, got %x", got)
	}
}

func TestFakeBitboxHarnessSimulatesEthereumAndBitcoinOperations(t *testing.T) {
	fake := &fakeBitboxDevice{
		ethPubResult:              "0x0000000000000000000000000000000000000001",
		ethSignResult:             []byte{0x11},
		ethSignEIP1559Result:      []byte{0x22},
		ethSignMessageResult:      []byte{0x33},
		ethSignTypedMessageResult: []byte{0x44},
		btcXPubResult:             "xpub-simulated",
		btcSignMessageSig:         []byte{0x55},
	}
	withFakeBitbox(t, fake)

	keypath := "0000002c0000003c000000000000000000000000"
	if got := ETHGetAddress(1, keypath, int(messages.ETHPubRequest_ADDRESS), false, nil); got != fake.ethPubResult {
		t.Fatalf("expected fake ETH address, got %q", got)
	}
	if got := ETHSignTransaction(1, keypath, 1, "01", 21000, make([]byte, 20), "01", nil, int(messages.ETHAddressCase_ETH_ADDRESS_CASE_LOWER)); !reflect.DeepEqual(got, []byte{0x11}) {
		t.Fatalf("expected fake ETH legacy signature, got %x", got)
	}
	encodedLegacyTx, err := rlp.EncodeToBytes(legacyTxPayload{
		Nonce:    1,
		GasPrice: big.NewInt(1),
		Gas:      21000,
		To:       ptr(common.HexToAddress("0x0000000000000000000000000000000000000001")),
		Value:    big.NewInt(1),
	})
	if err != nil {
		t.Fatal(err)
	}
	if got := ETHSignRPLTx(1, keypath, hex.EncodeToString(encodedLegacyTx), false); !reflect.DeepEqual(got, []byte{0x11}) {
		t.Fatalf("expected fake ETH RLP signature, got %x", got)
	}
	if got := ETHSignEIP1559(1, keypath, 1, "01", "02", 21000, make([]byte, 20), "01", nil, int(messages.ETHAddressCase_ETH_ADDRESS_CASE_LOWER)); !reflect.DeepEqual(got, []byte{0x22}) {
		t.Fatalf("expected fake ETH EIP1559 signature, got %x", got)
	}
	if got := ETHSignMessage(1, keypath, []byte("hello")); !reflect.DeepEqual(got, []byte{0x33}) {
		t.Fatalf("expected fake ETH message signature, got %x", got)
	}
	if got := ETHSignTypedMessage(1, keypath, []byte(`{"types":{},"primaryType":"Mail"}`)); !reflect.DeepEqual(got, []byte{0x44}) {
		t.Fatalf("expected fake ETH typed signature, got %x", got)
	}
	if got := BTCXPub(int(messages.BTCCoin_BTC), keypath, int(messages.BTCPubRequest_XPUB), false); got != "xpub-simulated" {
		t.Fatalf("expected fake xpub, got %q", got)
	}
	const validPSBT = "cHNidP8BAHECAAAAAfbXTun4YYxDroWyzRq3jDsWFVlsZ7HUzxiORY/iR4goAAAAAAD9////AuLCAAAAAAAAFgAUg3w5W0zt3AmxRmgA5Q6wZJUDRhUowwAAAAAAABYAFJjQqUoXDcwUEqfExu9pnaSn5XBct0ElAAABAR+ghgEAAAAAABYAFHn03igII+hp819N2Zlb5LnN8atRAQDfAQAAAAABAZ9EJlMJnXF5bFVrb1eFBYrEev3pg35WpvS3RlELsMMrAQAAAAD9////AqCGAQAAAAAAFgAUefTeKAgj6GnzX03ZmVvkuc3xq1EoRs4JAAAAABYAFKG2PzjYjknaA6lmXFqPaSgHwXX9AkgwRQIhAL0v0r3LisQ9KOlGzMhM/xYqUmrv2a5sORRlkX1fqDC8AiB9XqxSNEdb4mPnp7ylF1cAlbAZ7jMhgIxHUXylTww3bwEhA0AEOM0yYEpexPoKE3vT51uxZ+8hk9sOEfBFKOeo6oDDAAAAACIGAyNQfmAT/YLmZaxxfDwClmVNt2BkFnfQu/i8Uc/hHDUiGBKiwYlUAACAAQAAgAAAAIAAAAAAAAAAAAAAIgIDnxFM7Qr9LvJwQDB9GozdTRIe3MYVuHOqT7dU2EuvHrIYEqLBiVQAAIABAACAAAAAgAEAAAAAAAAAAA=="
	if got := BTCSignPSBT(int(messages.BTCCoin_BTC), validPSBT); got == "" {
		t.Fatal("expected fake PSBT signing to return an encoded PSBT")
	}
	if got := BTCSignMessage(int(messages.BTCCoin_BTC), keypath, []byte("hello")); !reflect.DeepEqual(got, []byte{0x55}) {
		t.Fatalf("expected fake BTC message signature, got %x", got)
	}
}

func ptr[T any](value T) *T {
	return &value
}

// A USB device carries no version until InitDevice has run the OP_INFO
// exchange, and the SDK panics rather than returning nil in that window. The
// gomobile boundary must absorb it: an empty string means "not known yet", and
// a caller gating on a minimum version must not read that as old firmware.
func TestFirmwareVersionReturnsEmptyBeforeTheDeviceReportsOne(t *testing.T) {
	fake := &fakeBitboxDevice{status: firmware.StatusInitialized}
	withFakeBitbox(t, fake)

	if got := FirmwareVersion(); got != "" {
		t.Fatalf("expected empty firmware version before init, got %q", got)
	}
	if !slices.Contains(fake.calls, "Version") {
		t.Fatal("expected FirmwareVersion to consult the device")
	}
	// The panic must not have poisoned the binding: the next call still works.
	if got := DeviceStatus(); got != string(firmware.StatusInitialized) {
		t.Fatalf("expected the binding to survive the panic, got %q", got)
	}
}

// Closing must drop the device, or the next connection inherits this one's
// cached state. A stale firmware version is the dangerous case: a host gate
// would clear a device it never inspected.
func TestReleaseDeviceClearsTheDeviceSoStaleStateIsNotReported(t *testing.T) {
	fake := &fakeBitboxDevice{
		status:  firmware.StatusInitialized,
		version: semver.NewSemVer(9, 26, 4),
	}
	withFakeBitbox(t, fake)

	if got := FirmwareVersion(); got != "v9.26.4" {
		t.Fatalf("expected the connected device's version, got %q", got)
	}

	ReleaseDevice()

	if got := FirmwareVersion(); got != "" {
		t.Fatalf("expected no version after release, got %q", got)
	}
	if got := DeviceStatus(); got != "" {
		t.Fatalf("expected no status after release, got %q", got)
	}
}

// nullTransport satisfies GoReadWriteCloserInterface without a device.
// GetDeviceWithInfo only stores it — u2fhid.NewCommunication and
// firmware.NewDevice do no I/O — so the version-parsing branch is reachable in
// a unit test.
type nullTransport struct{}

func (nullTransport) Read(n int) ([]byte, error) { return nil, errors.New("no transport") }
func (nullTransport) Write(p []byte) (int, error) {
	return 0, errors.New("no transport")
}
func (nullTransport) Close() error { return nil }

// A version the device reported but GetDeviceWithInfo could not parse is
// replaced by an invented placeholder. That placeholder must never leave the
// binding — neither as the device's own version, nor through the capability
// answers the SDK derives from the version.
func TestGetDeviceWithInfoWithholdsAnUnparseableVersion(t *testing.T) {
	previousDevice, previousSynthetic := currentDevice()
	t.Cleanup(func() {
		setDevice(previousDevice, previousSynthetic)
	})

	GetDeviceWithInfo(nullTransport{}, "v9.26.4", "bb02p-multi")
	if got := FirmwareVersion(); got != "v9.26.4" {
		t.Fatalf("expected the reported version, got %q", got)
	}
	if !SupportsETH(1) {
		t.Fatal("expected ETH support for a device on v9.26.4")
	}

	GetDeviceWithInfo(nullTransport{}, "not-a-version", "bb02p-multi")
	if got := FirmwareVersion(); got != "" {
		t.Fatalf("expected the invented version to be withheld, got %q", got)
	}
	if SupportsETH(1) {
		t.Fatal("expected no ETH support while the version is unknown")
	}
	if SupportsERC20("0xdAC17F958D2ee523a2206206994597C13D831ec7") {
		t.Fatal("expected no ERC20 support while the version is unknown")
	}

	// A later good connection must clear the flag again, not inherit it.
	GetDeviceWithInfo(nullTransport{}, "v9.26.4", "bb02p-multi")
	if got := FirmwareVersion(); got != "v9.26.4" {
		t.Fatalf("expected the flag to be cleared on reconnect, got %q", got)
	}

	ReleaseDevice()
	if got := FirmwareVersion(); got != "" {
		t.Fatalf("expected no version after release, got %q", got)
	}
}

// concurrentFake answers without recording the call, so the harness's own call
// log cannot race and confuse the subject of the test below, which is deviceMu.
type concurrentFake struct {
	*fakeBitboxDevice
	version *semver.SemVer
}

func (c concurrentFake) Version() *semver.SemVer { return c.version }
func (c concurrentFake) Status() firmware.Status { return firmware.StatusInitialized }

// The bridges release the device from the thread handling close/disconnect
// while a signature or the pairing handshake is still running on another, so
// the device and its flag must be replaced as a pair under the lock. Without
// deviceMu this fails under -race; the assertions matter less than the
// concurrent access itself.
func TestDeviceStateIsSafeUnderConcurrentReplacement(t *testing.T) {
	previousDevice, previousSynthetic := currentDevice()
	t.Cleanup(func() {
		setDevice(previousDevice, previousSynthetic)
	})

	fake := concurrentFake{
		fakeBitboxDevice: &fakeBitboxDevice{},
		version:          semver.NewSemVer(9, 26, 4),
	}

	var wg sync.WaitGroup
	for i := 0; i < 8; i++ {
		wg.Add(2)
		go func() {
			defer wg.Done()
			for j := 0; j < 200; j++ {
				setDevice(fake, false)
				ReleaseDevice()
			}
		}()
		go func() {
			defer wg.Done()
			for j := 0; j < 200; j++ {
				// Either answer is legitimate; the point is that no reader can
				// observe a half-replaced device.
				if got := FirmwareVersion(); got != "" && got != "v9.26.4" {
					t.Errorf("observed a torn firmware version: %q", got)
				}
				DeviceStatus()
			}
		}()
	}
	wg.Wait()
}

// Attaching a USB device after a Bluetooth device whose version did not parse
// must not inherit the flag. The two exports cannot tell the states apart --
// both answer "" before Init -- so assert the flag itself, which is what the
// version the SDK infers during Init is later filtered through.
func TestGetDeviceClearsTheSyntheticVersionFlag(t *testing.T) {
	previousDevice, previousSynthetic := currentDevice()
	t.Cleanup(func() {
		setDevice(previousDevice, previousSynthetic)
	})

	GetDeviceWithInfo(nullTransport{}, "not-a-version", "bb02p-multi")
	if _, synthetic := currentDevice(); !synthetic {
		t.Fatal("expected the unparseable version to be flagged as synthetic")
	}

	GetDevice(nullTransport{})

	if _, synthetic := currentDevice(); synthetic {
		t.Fatal("expected a USB device to start with no synthetic version flag")
	}
}

func TestFakeBitboxHarnessSimulatesErrorsAndPanicsWithoutCrashing(t *testing.T) {
	fake := &fakeBitboxDevice{
		initErr:                   errors.New("init failed"),
		ethPubErr:                 errors.New("address rejected"),
		ethSignMessageErr:         errors.New("message rejected"),
		btcXPubErr:                errors.New("xpub rejected"),
		rootFingerprintErr:        errors.New("fingerprint rejected"),
		panicOnETHSignTyped:       true,
		ethSignTypedMessageErr:    errors.New("unused"),
		ethSignTypedMessageResult: []byte{0xaa},
	}
	withFakeBitbox(t, fake)

	if InitDevice() {
		t.Fatal("expected simulated init error")
	}
	keypath := "0000002c0000003c000000000000000000000000"
	if got := ETHGetAddress(1, keypath, int(messages.ETHPubRequest_ADDRESS), false, nil); got != "" {
		t.Fatalf("expected empty address on simulated error, got %q", got)
	}
	if got := ETHSignMessage(1, keypath, []byte("hello")); got != nil {
		t.Fatalf("expected nil ETH signature on simulated error, got %x", got)
	}
	if got := BTCXPub(int(messages.BTCCoin_BTC), keypath, int(messages.BTCPubRequest_XPUB), false); got != "" {
		t.Fatalf("expected empty xpub on simulated error, got %q", got)
	}
	if got := GetMasterFingerprint(); len(got) != 0 {
		t.Fatalf("expected empty fingerprint on simulated error, got %x", got)
	}
	if got := ETHSignTypedMessage(1, keypath, []byte(`{}`)); got != nil {
		t.Fatalf("expected panic recovery to return nil signature, got %x", got)
	}
}

func TestExportedAPIsReturnZeroValuesWithoutDeviceInsteadOfCrashing(t *testing.T) {
	previousDevice, previousSynthetic := currentDevice()
	setDevice(nil, false)
	t.Cleanup(func() {
		setDevice(previousDevice, previousSynthetic)
	})

	keypath := "0000002c0000003c000000000000000000000000"
	if InitDevice() {
		t.Fatal("expected InitDevice to fail without a device")
	}
	if got := GetChannelHash(); got != "" {
		t.Fatalf("expected empty channel hash without device, got %q", got)
	}
	ChannelHashVerify(false)
	if SupportsETH(1) || SupportsLTC() || SupportsBluetooth() || SupportsERC20("0xToken") {
		t.Fatal("expected no capabilities without device")
	}
	if got := DeviceInfo(); got.Name != "" {
		t.Fatalf("expected zero device info without device, got %+v", got)
	}
	if got := DeviceStatus(); got != "" {
		t.Fatalf("expected empty device status without device, got %q", got)
	}
	if got := FirmwareVersion(); got != "" {
		t.Fatalf("expected empty firmware version without device, got %q", got)
	}
	if got := ETHGetAddress(1, keypath, int(messages.ETHPubRequest_ADDRESS), false, nil); got != "" {
		t.Fatalf("expected empty ETH address without device, got %q", got)
	}
	if got := ETHSignMessage(1, keypath, []byte("hello")); got != nil {
		t.Fatalf("expected nil ETH message signature without device, got %x", got)
	}
	if got := ETHSignTypedMessage(1, keypath, []byte(`{}`)); got != nil {
		t.Fatalf("expected nil ETH typed signature without device, got %x", got)
	}
	if got := BTCXPub(int(messages.BTCCoin_BTC), keypath, int(messages.BTCPubRequest_XPUB), false); got != "" {
		t.Fatalf("expected empty xpub without device, got %q", got)
	}
	if got := BTCSignMessage(int(messages.BTCCoin_BTC), keypath, []byte("hello")); got != nil {
		t.Fatalf("expected nil BTC message signature without device, got %x", got)
	}
	if got := GetMasterFingerprint(); len(got) != 0 {
		t.Fatalf("expected empty fingerprint without device, got %x", got)
	}
}

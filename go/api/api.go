package api

import (
	"encoding/binary"
	"encoding/hex"
	"fmt"
	"io"
	_ "log"
	"os/exec"
	"runtime"
	"strings"
	"time"

	"github.com/BitBoxSwiss/bitbox02-api-go/api/common"
	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware"
	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware/mocks"
	"github.com/BitBoxSwiss/bitbox02-api-go/util/semver"
	"github.com/DFXswiss/bitbox_flutter/u2fhid"
)

// fixTimezone sets the local timezone on Android. This is a workaround to the bug that on Android,
// time.Local is hard-coded to UTC. See https://github.com/golang/go/issues/20455.
//
// We need the correct timezone to be able to send the `time.Now().Zone()` offset to the BitBox02.
// Without it, the BitBox02 will always display UTC time instead of local time.
//
// This fix is copied from https://github.com/golang/go/issues/20455#issuecomment-342287698.
func fixTimezone() {
	if runtime.GOOS != "android" {
		// Only run the fix on Android.
		return
	}
	out, err := exec.Command("/system/bin/getprop", "persist.sys.timezone").Output()
	if err != nil {
		return
	}
	z, err := time.LoadLocation(strings.TrimSpace(string(out)))
	if err != nil {
		return
	}
	time.Local = z
}

func init() {
	fixTimezone()
}

// GoReadWriteCloserInterface adapts io.ReadWriteCloser's Read method to return the byte read byte slice
// instead of the .Read([]byte) pattern. This is as gomobile bind seems to make a copy of passed
// slices instead of writing directly to it, so the byte slice never makes it back to Go-land.
type GoReadWriteCloserInterface interface {
	Read(n int) ([]byte, error)
	io.Writer
	io.Closer
}

// GoDeviceInfoInterface adapts usb.DeviceInfo's Open method to return the adapted ReadWriteCloser.
type GoDeviceInfoInterface interface {
	IsBluetooth() bool
	VendorID() int
	ProductID() int
	UsagePage() int
	Interface() int
	Serial() string
	Product() string
	Identifier() string
	Open() (GoReadWriteCloserInterface, error)
}

// readWriteCloser implements io.ReadWriteCloser, translating from GoReadWriteCloserInterface. All methods
// are as-is except for Read().
type readWriteCloser struct {
	GoReadWriteCloserInterface
}

// Read implements io.ReadWriteCloser, translating GoReadWriteCloserInterface.Read, which returns a slice
//
//	instead of receiving it as an argument.
func (r readWriteCloser) Read(readBytesOut []byte) (int, error) {
	readBytes, err := r.GoReadWriteCloserInterface.Read(len(readBytesOut))
	if err != nil {
		return 0, err
	}
	copy(readBytesOut, readBytes)
	return len(readBytes), nil
}

// deviceInfo implements usb.DeviceInfo, translating from GoDeviceInfoInterface. All methods are as-is except
// for the Open method.
type deviceInfo struct {
	GoDeviceInfoInterface
}

// Open implements usb.DeviceInfo.
func (d deviceInfo) Open() (io.ReadWriteCloser, error) {
	device, err := d.GoDeviceInfoInterface.Open()
	if err != nil {
		return nil, err
	}
	return readWriteCloser{device}, nil
}

//export GetDevice
func GetDevice(device GoReadWriteCloserInterface) {
	defer recoverPanic("GetDevice")

	const bitboxCMD = 0x80 + 0x40 + 0x01
	comm := u2fhid.NewCommunication(readWriteCloser{device}, bitboxCMD)
	// The SDK infers the real version from OP_INFO during Init, so nothing is
	// synthesised on this path.
	setDevice(firmware.NewDevice(nil, nil, &mocks.Config{}, comm, &mocks.Logger{}), false)
}

// ReleaseDevice drops the reference to the connected device. The bridges call
// it when closing so the next connection cannot be answered with the previous
// device's cached state — a stale firmware version would otherwise let a host
// clear a device it never inspected.
//
//export ReleaseDevice
func ReleaseDevice() {
	defer recoverPanic("ReleaseDevice")

	setDevice(nil, false)
}

// GetDeviceWithInfo is like GetDevice but accepts version and product info for Bluetooth connections.
// version should be like "v9.25.0", product should be like "bb02p-multi" or "bb02p-btconly".
//
//export GetDeviceWithInfo
func GetDeviceWithInfo(device GoReadWriteCloserInterface, versionStr string, productStr string) {
	defer recoverPanic("GetDeviceWithInfo")

	const bitboxCMD = 0x80 + 0x40 + 0x01
	comm := u2fhid.NewCommunication(readWriteCloser{device}, bitboxCMD)

	// Parse version string (e.g., "v9.25.0" -> semver). Fall back to a known
	// default rather than panicking, so a malformed version from the device
	// does not crash the host engine.
	version, err := semver.NewSemVerFromString(strings.TrimPrefix(versionStr, "v"))
	versionSynthetic := err != nil
	if err != nil {
		fmt.Printf("[GetDeviceWithInfo] invalid version %q, falling back: %v\n", versionStr, err)
		version = semver.NewSemVer(9, 25, 0)
	}

	// Map product string to common.Product
	// bb02p-* are BitBox02 Plus (Nova) products — must use Plus variants
	var product common.Product
	switch productStr {
	case "bb02p-multi", "BitBox02 Nova Multi":
		product = common.ProductBitBox02PlusMulti
	case "bb02p-btconly", "BitBox02 Nova BTC-only":
		product = common.ProductBitBox02PlusBTCOnly
	case "bb02p-bl-multi", "BitBox02 Nova Multi bl":
		product = common.ProductBitBox02PlusMulti
	case "bb02p-bl-btconly", "BitBox02 Nova BTC-only bl":
		product = common.ProductBitBox02PlusBTCOnly
	// Original BitBox02 (non-Nova) products
	case "BitBox02Multi":
		product = common.ProductBitBox02Multi
	case "BitBox02BTCOnly":
		product = common.ProductBitBox02BTCOnly
	default:
		product = common.ProductBitBox02PlusMulti
	}

	setDevice(
		firmware.NewDevice(version, &product, &mocks.Config{}, comm, &mocks.Logger{}),
		versionSynthetic,
	)
}

//export GetChannelHash
func GetChannelHash() (hash string) {
	defer recoverPanic("GetChannelHash")

	device, _, _ := currentDevice()
	if device == nil {
		return ""
	}
	hash, _ = device.ChannelHash()
	return hash
}

//export ChannelHashVerify
func ChannelHashVerify(ok bool) {
	defer recoverPanic("ChannelHashVerify")

	device, _, _ := currentDevice()
	if device == nil {
		return
	}
	device.ChannelHashVerify(ok)
	if !ok {
		// The host rejected the code, so the channel is repudiated from this
		// side too and must stop answering a version gate. The SDK marks the
		// status but leaves its own device-verified flag set.
		setInitialised(device, false)
	}
}

//export InitDevice
func InitDevice() (success bool) {
	defer recoverPanic("InitDevice")

	device, _, _ := currentDevice()
	if device == nil {
		fmt.Println("[InitDevice] device pointer is nil")
		return false
	}
	// Init discards the existing channel before it builds a new one, so an
	// earlier success stops counting the moment this attempt starts.
	setInitialised(device, false)

	err := device.Init()
	if err != nil {
		fmt.Println("[InitDevice] error:", err)
		return false
	}
	// Init returns nil even when the user declined on the device — it reports
	// that by leaving the channel hash unverified, having already dropped both
	// ciphers. Only a channel the device actually confirmed may answer a
	// version gate, so the pairing flag decides this, not the error.
	_, deviceVerified := device.ChannelHash()
	setInitialised(device, deviceVerified)
	return true
}

// DeviceStatus returns the firmware status of the paired device as a string
// (e.g. "uninitialized", "seeded", "initialized"). It reads the cached status
// the SDK maintains, so it does not perform a device round-trip and cannot
// block. An empty string is returned when there is no device. Callers use this
// after pairing to tell an unseeded device (no wallet set up yet) apart from a
// transient empty address read.
//
//export DeviceStatus
func DeviceStatus() (status string) {
	defer recoverPanic("DeviceStatus")

	device, _, _ := currentDevice()
	if device == nil {
		return ""
	}
	return string(device.Status())
}

// FirmwareVersion returns the main firmware version of the connected device,
// `v`-prefixed (e.g. "v9.26.4"). It becomes available once the pairing has
// been established — InitDevice returning true is not sufficient, see below.
// Over Bluetooth the version reaches the SDK with GetDeviceWithInfo, over USB
// the SDK infers it from OP_INFO while initialising. Reading it afterwards
// costs no device round-trip.
//
// An empty string means the version is not known — no device, a device whose
// pairing was not established (a decline included, which InitDevice itself
// still reports as success), or one whose reported version could not be
// parsed. It never means "old firmware": callers gating on a minimum version
// must treat the two apart. This is the main firmware version, NOT the
// separately versioned Bluetooth firmware.
//
//export FirmwareVersion
func FirmwareVersion() (version string) {
	defer recoverPanic("FirmwareVersion")

	device, versionSynthetic, initialised := currentDevice()
	if device == nil || !initialised {
		// Bluetooth knows a version before init, but a pairing that was
		// declined or failed must not answer a gate — the channel it would
		// vouch for was never established.
		return ""
	}
	if versionSynthetic {
		// GetDeviceWithInfo substituted a placeholder it invented, which would
		// otherwise be reported as the device's own version and could clear a
		// device a gate never actually identified.
		return ""
	}
	// Version() panics when the version is not known yet, which is the normal
	// state for USB before InitDevice. recoverPanic turns that into the ""
	// zero value, so the not-known case stays indistinguishable from no device.
	return "v" + device.Version().String()
}

//export SupportsETH
func SupportsETH(chainId int) (supported bool) {
	defer recoverPanic("SupportsETH")

	device, versionSynthetic, initialised := currentDevice()
	if device == nil || !initialised || versionSynthetic {
		// The SDK answers this by comparing the firmware version, so a version
		// we invented — or one from a device whose init never succeeded —
		// would decide it. Report no support rather than a capability derived
		// from a number the device never stood behind.
		return false
	}
	return device.SupportsETH(uint64(chainId))
}

//export SupportsLTC
func SupportsLTC() (supported bool) {
	defer recoverPanic("SupportsLTC")

	device, _, _ := currentDevice()
	if device == nil {
		return false
	}
	return device.SupportsLTC()
}

//export SupportsBluetooth
func SupportsBluetooth() (supported bool) {
	defer recoverPanic("SupportsBluetooth")

	device, _, _ := currentDevice()
	if device == nil {
		return false
	}
	return device.SupportsBluetooth()
}

//export SupportsERC20
func SupportsERC20(contractAddress string) (supported bool) {
	defer recoverPanic("SupportsERC20")

	device, versionSynthetic, initialised := currentDevice()
	if device == nil || !initialised || versionSynthetic {
		// Version-derived like SupportsETH — see there.
		return false
	}
	return device.SupportsERC20(contractAddress)
}

//export DeviceInfo
func DeviceInfo() (out firmware.DeviceInfo) {
	defer recoverPanic("DeviceInfo")

	device, _, _ := currentDevice()
	if device == nil {
		return firmware.DeviceInfo{}
	}
	info, err := device.DeviceInfo()
	if err != nil || info == nil {
		fmt.Printf("[DeviceInfo] error: %v\n", err)
		return firmware.DeviceInfo{}
	}
	return *info
}

func hexToUint32Slice(hexStr string) ([]uint32, error) {
	bytes, err := hex.DecodeString(hexStr)
	if err != nil {
		return nil, fmt.Errorf("error decoding the hex string: %v", err)
	}

	if len(bytes)%4 != 0 {
		return nil, fmt.Errorf("bytelength has to be divisable by 4 for uint32")
	}

	result := make([]uint32, len(bytes)/4)
	for i := 0; i < len(bytes); i += 4 {
		result[i/4] = binary.BigEndian.Uint32(bytes[i : i+4])
	}

	return result, nil
}

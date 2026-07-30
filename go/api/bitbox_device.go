package api

import (
	"math/big"
	"sync"

	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware"
	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware/messages"
	"github.com/BitBoxSwiss/bitbox02-api-go/util/semver"
	"github.com/btcsuite/btcd/btcutil/psbt"
)

type bitboxDevice interface {
	Init() error
	ChannelHash() (string, bool)
	ChannelHashVerify(ok bool)
	Status() firmware.Status
	Version() *semver.SemVer
	DeviceInfo() (*firmware.DeviceInfo, error)
	RootFingerprint() ([]byte, error)
	SupportsETH(chainID uint64) bool
	SupportsLTC() bool
	SupportsBluetooth() bool
	SupportsERC20(contractAddress string) bool

	ETHPub(
		chainID uint64,
		keypath []uint32,
		outputType messages.ETHPubRequest_OutputType,
		display bool,
		contractAddress []byte,
	) (string, error)
	ETHSign(
		chainID uint64,
		keypath []uint32,
		nonce uint64,
		gasPrice *big.Int,
		gasLimit uint64,
		recipient [20]byte,
		value *big.Int,
		data []byte,
		recipientAddressCase messages.ETHAddressCase,
	) ([]byte, error)
	ETHSignEIP1559(
		chainID uint64,
		keypath []uint32,
		nonce uint64,
		maxPriorityFeePerGas *big.Int,
		maxFeePerGas *big.Int,
		gasLimit uint64,
		recipient [20]byte,
		value *big.Int,
		data []byte,
		recipientAddressCase messages.ETHAddressCase,
	) ([]byte, error)
	ETHSignMessage(chainID uint64, keypath []uint32, msg []byte) ([]byte, error)
	ETHSignTypedMessage(chainID uint64, keypath []uint32, jsonMsg []byte) ([]byte, error)

	BTCXPub(
		coin messages.BTCCoin,
		keypath []uint32,
		xpubType messages.BTCPubRequest_XPubType,
		display bool,
	) (string, error)
	BTCSignPSBT(coin messages.BTCCoin, psbt *psbt.Packet, options *firmware.PSBTSignOptions) error
	BTCSignMessage(
		coin messages.BTCCoin,
		scriptConfig *messages.BTCScriptConfigWithKeypath,
		message []byte,
	) (*firmware.BTCSignMessageResult, error)
}

// deviceMu guards bitbox and versionIsSynthetic, which belong together: they
// describe one connected device and are replaced as a pair. The bridges write
// them from the thread that handles close/disconnect while a signature or the
// pairing handshake is still in flight on another, so an unsynchronised
// interface write could be observed half-applied — a fault the recoverPanic
// boundary could not catch.
var (
	deviceMu           sync.RWMutex
	bitbox             bitboxDevice
	versionIsSynthetic bool
	deviceInitialised  bool
)

// currentDevice returns the connected device together with whether its version
// was invented rather than reported, and whether InitDevice has succeeded on
// it. Read under one lock, so no caller can see a half-replaced device.
func currentDevice() (device bitboxDevice, versionSynthetic bool, initialised bool) {
	deviceMu.RLock()
	defer deviceMu.RUnlock()

	return bitbox, versionIsSynthetic, deviceInitialised
}

// setDevice replaces the connected device. Pass nil to release it. The device
// always starts uninitialised: a version is only trustworthy once InitDevice
// has run, on Bluetooth as much as on USB.
func setDevice(device bitboxDevice, versionSynthetic bool) {
	deviceMu.Lock()
	defer deviceMu.Unlock()

	bitbox = device
	versionIsSynthetic = versionSynthetic
	deviceInitialised = false
}

// markInitialised records that InitDevice succeeded, but only while device is
// still the connected one — a disconnect during the pairing wait must not be
// undone by the init that was already in flight.
func markInitialised(device bitboxDevice) {
	deviceMu.Lock()
	defer deviceMu.Unlock()

	if bitbox == device {
		deviceInitialised = true
	}
}

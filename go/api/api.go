package api

import (
	"encoding/binary"
	"encoding/hex"
	"fmt"
	"io"
	_ "log"
	"math/big"
	"os/exec"
	"runtime"
	"strings"
	"time"

	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware"
	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware/messages"
	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware/mocks"
	"github.com/btcsuite/btcd/btcutil/psbt"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/rlp"
	"github.com/konstantinullrich/bitbox_flutter/u2fhid"
)

// fixTimezone sets the local timezone on Android. This is a workaround to the bug that on Android,
// time.Local is hard-coded to UTC. See https://github.com/golang/go/issues/20455.
//
// We need the correct timezone to be able to send the `time.Now().Zone()` offset to the BitBox02.
// Without it, the BitBox02 will always display UTC time instad of local time.
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

// the Go*-named interfaces are implemented in Java for the mobile client. The "Go" prefix is so
// that the code is more readable in Java (interfaces coming from Go-land). The implemented
// interfaces are than translated to implement backend.Environment (see see backendEnvironment
// struct).

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
// instead receiving it as an argument.
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

var bitbox *firmware.Device

//export GetDevice
func GetDevice(device GoReadWriteCloserInterface) {
	const bitboxCMD = 0x80 + 0x40 + 0x01
	comm := u2fhid.NewCommunication(readWriteCloser{device}, bitboxCMD)
	bitbox = firmware.NewDevice(nil, nil, &mocks.Config{}, comm, &mocks.Logger{})
}

//export GetChannelHash
func GetChannelHash() string {
	hash, _ := bitbox.ChannelHash()
	return hash
}

//export ChannelHashVerify
func ChannelHashVerify(ok bool) {
	bitbox.ChannelHashVerify(ok)
}

//export InitDevice
func InitDevice() {
	err := bitbox.Init()
	if err != nil {
		panic(err)
	}
}

//export SupportsETH
func SupportsETH(chainId int) bool {
	return bitbox.SupportsETH(uint64(chainId))
}

//export SupportsLTC
func SupportsLTC() bool {
	return bitbox.SupportsLTC()
}

//export SupportsBluetooth
func SupportsBluetooth() bool {
	return bitbox.SupportsBluetooth()
}

//export SupportsERC20
func SupportsERC20(contractAddress string) bool {
	return bitbox.SupportsERC20(contractAddress)
}

//export DeviceInfo
func DeviceInfo() firmware.DeviceInfo {
	info, _ := bitbox.DeviceInfo()
	return *info
}

//export ETHGetAddress
func ETHGetAddress(chainId int, keypath string, outputType int, display bool, contractAddress []byte) string {
	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		panic(err)
	}

	pub, err := bitbox.ETHPub(uint64(chainId), keypathData, messages.ETHPubRequest_OutputType(outputType), display, contractAddress)
	if err != nil {
		panic(err)
	}
	return pub
}

type dynamicFeeTxPayload struct {
	ChainID    uint64
	Nonce      uint64
	GasTipCap  *big.Int // a.k.a. maxPriorityFeePerGas
	GasFeeCap  *big.Int // a.k.a. maxFeePerGas
	Gas        uint64
	To         *common.Address `rlp:"nil"`
	Value      *big.Int
	Data       []byte
	AccessList any

	// Signature values
	V *big.Int `rlp:"optional"`
	R *big.Int `rlp:"optional"`
	S *big.Int `rlp:"optional"`
}

type legacyTxPayload struct {
	Nonce    uint64
	GasPrice *big.Int
	Gas      uint64
	To       *common.Address `rlp:"nil"`
	Value    *big.Int
	Data     []byte
	V, R, S  *big.Int `rlp:"optional"`
}

//export ETHSignRPLTx
func ETHSignRPLTx(chainId int, keypath string, encodedTx string, isEIP1559 bool) []byte {
	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		panic(err)
	}

	txEncoded, _ := hex.DecodeString(encodedTx)

	var signature []byte
	if isEIP1559 {
		var tx dynamicFeeTxPayload
		err = rlp.DecodeBytes(txEncoded, &tx)
		if err != nil {
			panic(err)
		}

		signature, err = bitbox.ETHSignEIP1559(
			uint64(chainId),
			keypathData,
			tx.Nonce,
			tx.GasTipCap,
			tx.GasFeeCap,
			tx.Gas,
			[20]byte(tx.To.Bytes()),
			tx.Value,
			tx.Data,
			firmware.ETHIdentifyCase(tx.To.String()),
		)
	} else {
		var tx legacyTxPayload
		err = rlp.DecodeBytes(txEncoded, &tx)
		if err != nil {
			panic(err)
		}
		signature, err = bitbox.ETHSign(
			uint64(chainId),
			keypathData,
			tx.Nonce,
			tx.GasPrice,
			tx.Gas,
			[20]byte(tx.To.Bytes()),
			tx.Value,
			tx.Data,
			firmware.ETHIdentifyCase(tx.To.String()),
		)
	}

	if err != nil {
		panic(err)
	}

	return signature
}

//export ETHSignTransaction
func ETHSignTransaction(chainId int, keypath string, nonce int, gasPrice string, gasLimit int, recipient []byte, value string, data []byte, recipientAddressCase int) []byte {
	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		panic(err)
	}

	gasPriceBI := new(big.Int)
	gasPriceBI, _ = gasPriceBI.SetString(gasPrice, 16)

	valueBI := new(big.Int)
	valueBI, _ = valueBI.SetString(value, 16)

	signature, err := bitbox.ETHSign(uint64(chainId), keypathData, uint64(nonce), gasPriceBI, uint64(gasLimit), [20]byte(recipient), valueBI, data, messages.ETHAddressCase(recipientAddressCase))
	if err != nil {
		panic(err)
	}
	return signature
}

//export ETHSignEIP1559
func ETHSignEIP1559(chainId int, keypath string, nonce int, maxPriorityFeePerGas string, maxFeePerGas string, gasLimit int, recipient []byte, value string, data []byte, recipientAddressCase int) []byte {
	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		panic(err)
	}

	maxPriorityFeePerGasBI := new(big.Int)
	maxPriorityFeePerGasBI, _ = maxPriorityFeePerGasBI.SetString(maxPriorityFeePerGas, 16)

	maxFeePerGasBI := new(big.Int)
	maxFeePerGasBI, _ = maxFeePerGasBI.SetString(maxFeePerGas, 16)

	valueBI := new(big.Int)
	valueBI, _ = valueBI.SetString(value, 16)

	signature, err := bitbox.ETHSignEIP1559(uint64(chainId), keypathData, uint64(nonce), maxPriorityFeePerGasBI, maxFeePerGasBI, uint64(gasLimit), [20]byte(recipient), valueBI, data, messages.ETHAddressCase(recipientAddressCase))
	if err != nil {
		panic(err)
	}

	return signature
}

//export ETHSignMessage
func ETHSignMessage(chainId int, keypath string, msg []byte) []byte {
	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		panic(err)
	}

	signature, err := bitbox.ETHSignMessage(uint64(chainId), keypathData, msg)
	if err != nil {
		panic(err)
	}
	return signature
}

//export ETHSignTypedMessage
func ETHSignTypedMessage(chainId int, keypath string, jsonMsg []byte) []byte {
	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		panic(err)
	}

	signature, err := bitbox.ETHSignTypedMessage(uint64(chainId), keypathData, jsonMsg)
	if err != nil {
		panic(err)
	}

	return signature
}

//export BTCXPub
func BTCXPub(coinType int, keypath string, addressType int, display bool) string {
	keypathData, _ := hexToUint32Slice(keypath)

	pub, _ := bitbox.BTCXPub(messages.BTCCoin(coinType), keypathData, messages.BTCPubRequest_XPubType(addressType), display)
	return pub
}

//export BTCSignPSBT
func BTCSignPSBT(coinType int, psbtStr string) string {
	psbt_, err := psbt.NewFromRawBytes(strings.NewReader(psbtStr), true)

	if err != nil {
		panic(err)
	}

	err = bitbox.BTCSignPSBT(messages.BTCCoin(coinType), psbt_, nil)
	if err != nil {
		panic(err)
	}

	psbtStr_, err := psbt_.B64Encode()

	if err != nil {
		panic(err)
	}

	return psbtStr_
}

//export BTCSignMessage
func BTCSignMessage(coinType int, keypath string, msg []byte) []byte {
	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		panic(err)
	}

	scriptConfig := &messages.BTCScriptConfigWithKeypath{
		ScriptConfig: firmware.NewBTCScriptConfigSimple(messages.BTCScriptConfig_P2WPKH),
		Keypath:      keypathData,
	}

	signature, err := bitbox.BTCSignMessage(messages.BTCCoin(coinType), scriptConfig, msg)
	if err != nil {
		panic(err)
	}
	return signature.Signature
}

//export GetMasterFingerprint
func GetMasterFingerprint() []byte {
	fingerprint, err := bitbox.RootFingerprint()

	if err != nil {
		return make([]byte, 0)
	}

	return fingerprint
}

func hexToUint32Slice(hexStr string) ([]uint32, error) {
	bytes, err := hex.DecodeString(hexStr)
	if err != nil {
		return nil, fmt.Errorf("error decoding the hex string: %v", err)
	}

	if len(bytes)%4 != 0 {
		return nil, fmt.Errorf("Byte-Länge muss durch 4 teilbar sein für uint32")
	}

	result := make([]uint32, len(bytes)/4)
	for i := 0; i < len(bytes); i += 4 {
		result[i/4] = binary.BigEndian.Uint32(bytes[i : i+4])
	}

	return result, nil
}

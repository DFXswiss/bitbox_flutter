package main

import (
	"github.com/BitBoxSwiss/bitbox02-api-go/api/common"
	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware"
	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware/mocks"
)

/*
typedef void (*count_cb)(int);

static inline void makeCallback(int sum, count_cb cb) {
     cb(sum);
}
*/
import "C"

//export Count
func Count(n C.int, cb C.count_cb) *C.char {
	goCb := func(n int) { C.makeCallback(C.int(n), cb) }
	return count(int(n), goCb)
}

type countCb func(n int)

var messages = make(chan string)

func count(n int, goCb countCb) *C.char {
	goCb(n + 1)

	return C.CString(<-messages)
}

//export SetMessage
func SetMessage(msg *C.char) {
	messages <- C.GoString(msg)
}

const (
	bitbox02VendorID  = 0x03eb
	bitbox02ProductID = 0x2403
)

//export isBitBox02
func isBitBox02(product *C.char, vendorID uint16, productID uint16) bool {
	productStr := C.GoString(product)
	return (productStr == common.FirmwareDeviceProductStringBitBox02Multi ||
		productStr == common.FirmwareDeviceProductStringBitBox02BTCOnly ||
		productStr == common.FirmwareDeviceProductStringBitBox02PlusMulti ||
		productStr == common.FirmwareDeviceProductStringBitBox02PlusBTCOnly) &&
		vendorID == bitbox02VendorID &&
		productID == bitbox02ProductID

}

var device *firmware.Device

//export NewDevice
func NewDevice() bool {
	device = firmware.NewDevice(nil, nil, &mocks.Config{}, &mocks.Communication{
		MockQuery: func(msg []byte) ([]byte, error) {
			panic("Query: " + string(msg))
			return nil, nil
		},
	}, &mocks.Logger{})

	err := device.Init()
	if err != nil {
		return false
	}
	return true
}

//export DeviceSupportsLTC
func DeviceSupportsLTC() bool {
	return device.SupportsLTC()
}

func main() {}

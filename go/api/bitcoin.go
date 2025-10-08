package api

import (
	"strings"

	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware"
	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware/messages"
	"github.com/btcsuite/btcd/btcutil/psbt"
)

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

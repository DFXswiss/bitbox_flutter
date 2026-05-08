package api

import (
	"fmt"
	"strings"

	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware"
	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware/messages"
	"github.com/btcsuite/btcd/btcutil/psbt"
)

//export BTCXPub
func BTCXPub(coinType int, keypath string, addressType int, display bool) (xpub string) {
	defer recoverPanic("BTCXPub")

	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		fmt.Printf("[BTCXPub] keypath decode error: %v\n", err)
		return ""
	}

	pub, err := bitbox.BTCXPub(messages.BTCCoin(coinType), keypathData, messages.BTCPubRequest_XPubType(addressType), display)
	if err != nil {
		fmt.Printf("[BTCXPub] device error: %v\n", err)
		return ""
	}
	return pub
}

//export BTCSignPSBT
func BTCSignPSBT(coinType int, psbtStr string) (signed string) {
	defer recoverPanic("BTCSignPSBT")

	psbt_, err := psbt.NewFromRawBytes(strings.NewReader(psbtStr), true)
	if err != nil {
		fmt.Printf("[BTCSignPSBT] PSBT parse error: %v\n", err)
		return ""
	}

	if err := bitbox.BTCSignPSBT(messages.BTCCoin(coinType), psbt_, nil); err != nil {
		fmt.Printf("[BTCSignPSBT] device error: %v\n", err)
		return ""
	}

	psbtStr_, err := psbt_.B64Encode()
	if err != nil {
		fmt.Printf("[BTCSignPSBT] PSBT encode error: %v\n", err)
		return ""
	}

	return psbtStr_
}

//export BTCSignMessage
func BTCSignMessage(coinType int, keypath string, msg []byte) (signature []byte) {
	defer recoverPanic("BTCSignMessage")

	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		fmt.Printf("[BTCSignMessage] keypath decode error: %v\n", err)
		return nil
	}

	scriptConfig := &messages.BTCScriptConfigWithKeypath{
		ScriptConfig: firmware.NewBTCScriptConfigSimple(messages.BTCScriptConfig_P2WPKH),
		Keypath:      keypathData,
	}

	result, err := bitbox.BTCSignMessage(messages.BTCCoin(coinType), scriptConfig, msg)
	if err != nil {
		fmt.Printf("[BTCSignMessage] device error: %v\n", err)
		return nil
	}
	return result.Signature
}

//export GetMasterFingerprint
func GetMasterFingerprint() (fingerprint []byte) {
	defer recoverPanic("GetMasterFingerprint")

	fingerprint, err := bitbox.RootFingerprint()
	if err != nil {
		return make([]byte, 0)
	}
	return fingerprint
}

package api

import (
	"encoding/hex"
	"fmt"
	"math/big"

	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware"
	"github.com/BitBoxSwiss/bitbox02-api-go/api/firmware/messages"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/rlp"
)

//export ETHGetAddress
func ETHGetAddress(chainId int, keypath string, outputType int, display bool, contractAddress []byte) (address string) {
	defer recoverPanic("ETHGetAddress")

	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		fmt.Printf("[ETHGetAddress] keypath decode error: %v\n", err)
		return ""
	}

	pub, err := bitbox.ETHPub(uint64(chainId), keypathData, messages.ETHPubRequest_OutputType(outputType), display, contractAddress)
	if err != nil {
		fmt.Printf("[ETHGetAddress] device error: %v\n", err)
		return ""
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
func ETHSignRPLTx(chainId int, keypath string, encodedTx string, isEIP1559 bool) (signature []byte) {
	defer recoverPanic("ETHSignRPLTx")

	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		fmt.Printf("[ETHSignRPLTx] keypath decode error: %v\n", err)
		return nil
	}

	txEncoded, err := hex.DecodeString(encodedTx)
	if err != nil {
		fmt.Printf("[ETHSignRPLTx] tx decode error: %v\n", err)
		return nil
	}

	if isEIP1559 {
		var tx dynamicFeeTxPayload
		if err := rlp.DecodeBytes(txEncoded, &tx); err != nil {
			fmt.Printf("[ETHSignRPLTx] EIP1559 decode error: %v\n", err)
			return nil
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
		if err := rlp.DecodeBytes(txEncoded, &tx); err != nil {
			fmt.Printf("[ETHSignRPLTx] legacy decode error: %v\n", err)
			return nil
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
		fmt.Printf("[ETHSignRPLTx] device error: %v\n", err)
		return nil
	}

	return signature
}

//export ETHSignTransaction
func ETHSignTransaction(chainId int, keypath string, nonce int, gasPrice string, gasLimit int, recipient []byte, value string, data []byte, recipientAddressCase int) (signature []byte) {
	defer recoverPanic("ETHSignTransaction")

	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		fmt.Printf("[ETHSignTransaction] keypath decode error: %v\n", err)
		return nil
	}

	gasPriceBI := new(big.Int)
	gasPriceBI, _ = gasPriceBI.SetString(gasPrice, 16)

	valueBI := new(big.Int)
	valueBI, _ = valueBI.SetString(value, 16)

	signature, err = bitbox.ETHSign(uint64(chainId), keypathData, uint64(nonce), gasPriceBI, uint64(gasLimit), [20]byte(recipient), valueBI, data, messages.ETHAddressCase(recipientAddressCase))
	if err != nil {
		fmt.Printf("[ETHSignTransaction] device error: %v\n", err)
		return nil
	}
	return signature
}

//export ETHSignEIP1559
func ETHSignEIP1559(chainId int, keypath string, nonce int, maxPriorityFeePerGas string, maxFeePerGas string, gasLimit int, recipient []byte, value string, data []byte, recipientAddressCase int) (signature []byte) {
	defer recoverPanic("ETHSignEIP1559")

	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		fmt.Printf("[ETHSignEIP1559] keypath decode error: %v\n", err)
		return nil
	}

	maxPriorityFeePerGasBI := new(big.Int)
	maxPriorityFeePerGasBI, _ = maxPriorityFeePerGasBI.SetString(maxPriorityFeePerGas, 16)

	maxFeePerGasBI := new(big.Int)
	maxFeePerGasBI, _ = maxFeePerGasBI.SetString(maxFeePerGas, 16)

	valueBI := new(big.Int)
	valueBI, _ = valueBI.SetString(value, 16)

	signature, err = bitbox.ETHSignEIP1559(uint64(chainId), keypathData, uint64(nonce), maxPriorityFeePerGasBI, maxFeePerGasBI, uint64(gasLimit), [20]byte(recipient), valueBI, data, messages.ETHAddressCase(recipientAddressCase))
	if err != nil {
		fmt.Printf("[ETHSignEIP1559] device error: %v\n", err)
		return nil
	}

	return signature
}

//export ETHSignMessage
func ETHSignMessage(chainId int, keypath string, msg []byte) (signature []byte) {
	defer recoverPanic("ETHSignMessage")

	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		fmt.Printf("[ETHSignMessage] keypath decode error: %v\n", err)
		return nil
	}

	signature, err = bitbox.ETHSignMessage(uint64(chainId), keypathData, msg)
	if err != nil {
		fmt.Printf("[ETHSignMessage] device error: %v\n", err)
		return nil
	}
	return signature
}

//export ETHSignTypedMessage
func ETHSignTypedMessage(chainId int, keypath string, jsonMsg []byte) (signature []byte) {
	defer recoverPanic("ETHSignTypedMessage")

	keypathData, err := hexToUint32Slice(keypath)
	if err != nil {
		fmt.Printf("[ETHSignTypedMessage] keypath decode error: %v\n", err)
		return nil
	}

	signature, err = bitbox.ETHSignTypedMessage(uint64(chainId), keypathData, jsonMsg)
	if err != nil {
		fmt.Printf("[ETHSignTypedMessage] device error: %v\n", err)
		return nil
	}

	return signature
}

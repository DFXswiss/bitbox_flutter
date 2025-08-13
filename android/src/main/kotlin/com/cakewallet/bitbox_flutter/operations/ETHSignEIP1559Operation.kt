package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import api.Api
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class ETHSignEIP1559Operation(manager: BitboxManager) : UsbMethodCallOperation(manager.usbManager) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        val chainID: Int? = methodCall.argument("chainId")
        val keypath: String? = methodCall.argument("keypath")
        val nonce: Int? = methodCall.argument("nonce")
        val maxPriorityFeePerGas: String? = methodCall.argument("maxPriorityFeePerGas")
        val maxFeePerGas: String? = methodCall.argument("maxFeePerGas")
        val gasLimit: Int? = methodCall.argument("gasLimit")
        val recipient: ByteArray? = methodCall.argument("recipient")
        val value: String? = methodCall.argument("value")
        val data: ByteArray? = methodCall.argument("data")
        val recipientAddressCase: Int? = methodCall.argument("recipientAddressCase")

        val res = Api.ethSignEIP1559(
            chainID!!.toLong(),
            keypath,
            nonce!!.toLong(),
            maxPriorityFeePerGas,
            maxFeePerGas,
            gasLimit!!.toLong(),
            recipient,
            value,
            data,
            recipientAddressCase!!.toLong(),
        )
        result.success(res)
    }
}

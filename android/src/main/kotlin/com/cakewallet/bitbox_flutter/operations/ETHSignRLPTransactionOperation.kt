package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import api.Api
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class ETHSignRLPTransactionOperation(manager: BitboxManager) : UsbMethodCallOperation(manager.usbManager) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        val chainID: Int? = methodCall.argument("chainId")
        val keypath: String? = methodCall.argument("keypath")
        val txData: String? = methodCall.argument("txData")
        val isEIP1559: Boolean? = methodCall.argument("isEIP1559")

        val res = Api.ethSignRPLTx(
            chainID!!.toLong(),
            keypath,
            txData,
            isEIP1559!!,
        )
        result.success(res)
    }
}

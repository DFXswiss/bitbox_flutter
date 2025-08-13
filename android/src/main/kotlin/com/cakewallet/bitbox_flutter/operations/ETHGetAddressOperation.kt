package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import api.Api
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class ETHGetAddressOperation(manager: BitboxManager) : UsbMethodCallOperation(manager.usbManager) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        val chainID: Int? = methodCall.argument("chainId")
        val keypath: String? = methodCall.argument("keypath")
        val outputType: Int? = methodCall.argument("outputType")
        val display: Boolean? = methodCall.argument("display")

        val res = Api.ethGetAddress(chainID!!.toLong(), keypath,outputType!!.toLong(), display!!, byteArrayOf())
        result.success(res)
    }
}

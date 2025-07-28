package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import api.Api
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class SupportsETHOperation(private val manager: BitboxManager) : UsbMethodCallOperation(
    manager.usbManager
) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        val chainID: Int? = methodCall.argument("chainId")
        val res = Api.supportsETH(chainID!!.toLong())
        result.success(res)
    }
}

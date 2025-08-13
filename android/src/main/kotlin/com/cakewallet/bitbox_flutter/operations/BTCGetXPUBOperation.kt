package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import api.Api
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class BTCGetXPUBOperation(manager: BitboxManager) : UsbMethodCallOperation(manager.usbManager) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        val coinTyp: Int? = methodCall.argument("coinType")
        val keypath: String? = methodCall.argument("keypath")
        val addressType: Int? = methodCall.argument("addressType")
        val display: Boolean? = methodCall.argument("display")

        val res = Api.btcxPub(coinTyp!!.toLong(), keypath,addressType!!.toLong(), display!!)
        result.success(res)
    }
}

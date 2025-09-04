package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import api.Api
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class BTCSignMessageOperation(manager: BitboxManager) : UsbMethodCallOperation(manager.usbManager) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        val coinTyp: Int? = methodCall.argument("coinType")
        val keypath: String? = methodCall.argument("keypath")
        val message: ByteArray? = methodCall.argument("message")

        val res = Api.btcSignMessage(coinTyp!!.toLong(), keypath, message)
        result.success(res)
    }
}

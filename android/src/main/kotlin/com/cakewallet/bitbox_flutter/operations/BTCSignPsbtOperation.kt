package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import api.Api
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class BTCSignPsbtOperation(manager: BitboxManager) : UsbMethodCallOperation(manager.usbManager) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        val coinTyp: Int? = methodCall.argument("coinType")
        val psbt: String? = methodCall.argument("psbt")

        val res = Api.btcSignPSBT(coinTyp!!.toLong(), psbt)
        result.success(res)
    }
}

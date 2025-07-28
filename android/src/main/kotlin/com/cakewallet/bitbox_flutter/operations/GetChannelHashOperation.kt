package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import api.Api
import com.cakewallet.bitbox_flutter.LedgerException
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class GetChannelHashOperation(private val manager: BitboxManager) : UsbMethodCallOperation(
    manager.usbManager
) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        try {
            val hash = Api.getChannelHash()
            result.success(hash)
        } catch (ex: LedgerException) {
            this.manager.gracefullyReset()
            result.error(ex.getErrorCode(), ex.message, null)
        }
    }
}

package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import com.cakewallet.bitbox_flutter.LedgerException
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class ConnectBitBoxOperation(private val manager: BitboxManager) : UsbMethodCallOperation(
    manager.usbManager
) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        val identifier: String? = methodCall.argument("identifier")
        try {
            this.manager.connectBitBox(identifier!!)
            result.success(true)
        } catch (ex: LedgerException) {
            this.manager.gracefullyReset()
            result.error(ex.getErrorCode(), ex.message, null)
        }
    }
}

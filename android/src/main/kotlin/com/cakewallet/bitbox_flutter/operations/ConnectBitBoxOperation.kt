package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import android.util.Log
import com.cakewallet.bitbox_flutter.BitBoxException
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class ConnectBitBoxOperation(private val manager: BitboxManager) :
    UsbMethodCallOperation(manager.usbManager) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        val identifier: String? = methodCall.argument("identifier")
        try {
            this.manager.connectBitBox(identifier!!)
            result.success(true)
        } catch (ex: BitBoxException) {
            Log.w("bitbox_flutter", "connectBitBox failed (${ex.getErrorCode()}): ${ex.message}")
            this.manager.gracefullyReset()
            result.error(ex.getErrorCode(), ex.message, null)
        }
    }
}

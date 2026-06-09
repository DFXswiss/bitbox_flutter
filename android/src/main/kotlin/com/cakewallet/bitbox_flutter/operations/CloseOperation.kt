package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import android.util.Log
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class CloseOperation(private val manager: BitboxManager) :
    UsbMethodCallOperation(manager.usbManager) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        try {
            manager.close()
        } catch (ex: Exception) {
            Log.w("bitbox_flutter", "close failed, gracefully resetting: ${ex.message}")
            manager.gracefullyReset()
        }

        result.success(true)
    }
}

package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import api.Api
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
        } catch (_: Exception) {
            manager.gracefullyReset()
        }

        // Drop the Go-side device too, so the next connection is not answered
        // with this one's cached status and firmware version. Runs after the
        // reset path as well, which is exactly when the stale state matters.
        Api.releaseDevice()

        result.success(true)
    }
}

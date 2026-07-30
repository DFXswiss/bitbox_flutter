package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import api.Api
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
        // Opening starts a new device. Release first so a failed open cannot
        // leave the previous one answering: the success path rebinds
        // immediately via Api.getDevice, but the error path never would.
        Api.releaseDevice()

        val identifier: String? = methodCall.argument("identifier")
        try {
            this.manager.connectBitBox(identifier!!)
            result.success(true)
        } catch (ex: BitBoxException) {
            this.manager.gracefullyReset()
            result.error(ex.getErrorCode(), ex.message, null)
        }
    }
}

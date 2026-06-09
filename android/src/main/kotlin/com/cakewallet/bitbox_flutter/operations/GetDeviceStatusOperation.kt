package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import api.Api
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class GetDeviceStatusOperation(manager: BitboxManager) : UsbMethodCallOperation(manager.usbManager) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        // Api.deviceStatus() reads the SDK's cached firmware status — no device
        // round-trip — so it is safe to run on the serial queue like getChannelHash.
        val status = Api.deviceStatus()
        result.success(status)
    }
}

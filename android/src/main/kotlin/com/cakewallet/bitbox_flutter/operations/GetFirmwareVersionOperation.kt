package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import api.Api
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class GetFirmwareVersionOperation(manager: BitboxManager) : UsbMethodCallOperation(manager.usbManager) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        // Api.firmwareVersion() reads the version the SDK already holds — no
        // device round-trip — so it is safe on the serial queue like
        // getDeviceStatus. Over USB it stays empty until initBitBox has run.
        val version = Api.firmwareVersion()
        result.success(version)
    }
}

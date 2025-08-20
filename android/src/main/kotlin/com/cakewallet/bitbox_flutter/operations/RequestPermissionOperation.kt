package com.cakewallet.bitbox_flutter.operations

import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Intent
import android.content.IntentFilter
import android.hardware.usb.UsbDevice
import android.hardware.usb.UsbManager
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class RequestPermissionOperation(manager: BitboxManager) : UsbMethodCallOperation(manager.usbManager) {
    public override fun onMethodCall(
        context: android.content.Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        val identifier: kotlin.String? = methodCall.argument("identifier")
        val device: UsbDevice? = usbManager.getDeviceList().get(identifier)
        if (device == null) {
            result.success(false)
            return
        }

        if (usbManager.hasPermission(device)) {
            result.success(true)
            return
        }

        val receiver: BroadcastReceiver = object : BroadcastReceiver() {
            override fun onReceive(context: android.content.Context, intent: Intent) {
                context.unregisterReceiver(this)
                val granted: Boolean =
                    intent.getBooleanExtra(UsbManager.EXTRA_PERMISSION_GRANTED, false)
                result.success(granted)
            }
        }

        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.TIRAMISU) {
            context.registerReceiver(
                receiver,
                IntentFilter(ACTION_USB_PERMISSION),
                android.content.Context.RECEIVER_NOT_EXPORTED
            )
        } else {
            context.registerReceiver(
                receiver,
                IntentFilter(ACTION_USB_PERMISSION)
            )
        }

        usbManager.requestPermission(device, getPendingIntent(context))
    }

    fun getPendingIntent(context: android.content.Context?): PendingIntent? {
        val flags: Int
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.S) {
            flags = PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
        } else {
            flags = PendingIntent.FLAG_UPDATE_CURRENT
        }

        return PendingIntent.getBroadcast(
            context,
            0,
            Intent(ACTION_USB_PERMISSION),
            flags
        )
    }

    companion object {
        const val ACTION_USB_PERMISSION: String = "com.cakewallet.bitbox_flutter.USB_PERMISSION"
    }
}

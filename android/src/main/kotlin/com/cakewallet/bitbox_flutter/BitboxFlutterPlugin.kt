package com.cakewallet.bitbox_flutter

import android.content.Context
import android.hardware.usb.UsbManager
import com.cakewallet.bitbox_flutter.operations.CloseOperation
import com.cakewallet.bitbox_flutter.operations.ConnectOperation
import com.cakewallet.bitbox_flutter.operations.GetDevicesOperation
import com.cakewallet.bitbox_flutter.operations.RequestPermissionOperation
import com.cakewallet.bitbox_flutter.operations.TransferInOperation
import com.cakewallet.bitbox_flutter.operations.TransferOutOperation
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

class BitboxFlutterPlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var channel : MethodChannel
    private lateinit var context: android.content.Context
    private lateinit var usbManager: UsbManager
    private lateinit var registry: MethodCallRegistry
    private lateinit var BitboxManager: BitboxManager

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(binding.getBinaryMessenger(), "ledger_usb")
        channel.setMethodCallHandler(this)
        context = binding.getApplicationContext()
        usbManager = context.getSystemService(Context.USB_SERVICE) as UsbManager
        BitboxManager = BitboxManager(usbManager)

        // Register the method calls
        registry = MethodCallRegistry()
        registry.registerMethodCall(
            "getDevices",
            GetDevicesOperation(BitboxManager)
        )
        registry.registerMethodCall(
            "requestPermission",
            RequestPermissionOperation(BitboxManager)
        )
        registry.registerMethodCall(
            "open",
            ConnectOperation(BitboxManager)
        )
        registry.registerMethodCall(
            "close",
            CloseOperation(BitboxManager)
        )
        registry.registerMethodCall(
            "transferIn",
            TransferInOperation(BitboxManager)
        )
        registry.registerMethodCall(
            "transferOut",
            TransferOutOperation(BitboxManager)
        )
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        registry.onMethodCall(context, call, result)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
        registry.clear()
    }
}

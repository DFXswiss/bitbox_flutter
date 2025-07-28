package com.cakewallet.bitbox_flutter

import android.content.Context
import android.hardware.usb.UsbManager
import com.cakewallet.bitbox_flutter.operations.CloseOperation
import com.cakewallet.bitbox_flutter.operations.ConnectBitBoxOperation
import com.cakewallet.bitbox_flutter.operations.GetChannelHashOperation
import com.cakewallet.bitbox_flutter.operations.GetDevicesOperation
import com.cakewallet.bitbox_flutter.operations.InitBitBoxOperation
import com.cakewallet.bitbox_flutter.operations.RequestPermissionOperation
import com.cakewallet.bitbox_flutter.operations.SupportsETHOperation
import com.cakewallet.bitbox_flutter.operations.SupportsERC20Operation
import com.cakewallet.bitbox_flutter.operations.SupportsLTCOperation
import com.cakewallet.bitbox_flutter.operations.TransferInOperation
import com.cakewallet.bitbox_flutter.operations.TransferOutOperation
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler

class BitboxFlutterPlugin : FlutterPlugin, MethodCallHandler {
    private lateinit var channel : MethodChannel
    private lateinit var context: Context
    private lateinit var usbManager: UsbManager
    private lateinit var registry: MethodCallRegistry
    private lateinit var bitboxManager: BitboxManager

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(binding.getBinaryMessenger(), "ledger_usb")
        channel.setMethodCallHandler(this)
        context = binding.getApplicationContext()
        usbManager = context.getSystemService(Context.USB_SERVICE) as UsbManager
        bitboxManager = BitboxManager(usbManager)


        // Register the method calls
        registry = MethodCallRegistry()
        registry.registerMethodCall(
            "getDevices",
            GetDevicesOperation(bitboxManager)
        )
        registry.registerMethodCall(
            "requestPermission",
            RequestPermissionOperation(bitboxManager)
        )
        registry.registerMethodCall(
            "open",
            ConnectBitBoxOperation(bitboxManager)
        )
        registry.registerMethodCall(
            "close",
            CloseOperation(bitboxManager)
        )
        registry.registerMethodCall(
            "transferIn",
            TransferInOperation(bitboxManager)
        )
        registry.registerMethodCall(
            "transferOut",
            TransferOutOperation(bitboxManager)
        )

        registry.registerMethodCall(
            "initBitBox",
            InitBitBoxOperation(bitboxManager)
        )
        registry.registerMethodCall(
            "getChannelHash",
            GetChannelHashOperation(bitboxManager)
        )
        registry.registerMethodCall(
            "supportsETH",
            SupportsETHOperation(bitboxManager)
        )
        registry.registerMethodCall(
            "supportsERC20",
            SupportsERC20Operation(bitboxManager)
        )
        registry.registerMethodCall(
            "supportsLTC",
            SupportsLTCOperation(bitboxManager)
        )
    }

    override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
        registry.onMethodCall(context, call, result)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
        registry.clear()
    }
}

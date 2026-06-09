package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import android.os.Handler
import android.os.Looper
import api.Api
import com.cakewallet.bitbox_flutter.BitboxManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class InitBitBoxOperation(manager: BitboxManager) : UsbMethodCallOperation(manager.usbManager) {
    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        // Api.initDevice() drives the Noise XX handshake and then blocks until the
        // user confirms the pairing on the device. The channel hash (pairing code) is
        // already set on the shared device object before that blocking wait, so the
        // host can display it immediately.
        //
        // The "bitbox_usb" MethodChannel runs on a serial background task queue. If we
        // called Api.initDevice() directly here, it would occupy that single queue for
        // the whole blocking wait, so the concurrent getChannelHash poll could not run
        // until init returned — i.e. only AFTER the device confirmation. That made the
        // pairing code appear in the app only after the user confirmed on the BitBox,
        // instead of simultaneously (Android-only; iOS dispatches init to a background
        // queue and is unaffected).
        //
        // Running the blocking call on its own thread frees the serial queue, so
        // getChannelHash is serviced while init is in flight and the code shows on app
        // and device at the same time. All other device operations stay on the serial
        // queue, preserving the single-cipher nonce ordering.
        Thread {
            val success = try {
                Api.initDevice()
            } catch (e: Throwable) {
                false
            }
            Handler(Looper.getMainLooper()).post { result.success(success) }
        }.apply { name = "bitbox-init" }.start()
    }
}

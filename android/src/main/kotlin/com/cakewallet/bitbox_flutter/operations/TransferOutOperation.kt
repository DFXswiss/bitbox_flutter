package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import com.cakewallet.bitbox_flutter.BitboxManager
import com.cakewallet.bitbox_flutter.LedgerException
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class TransferOutOperation(private val manager: BitboxManager) :
    UsbMethodCallOperation(manager.usbManager) {

    override fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    ) {
        val data: ByteArray? = methodCall.argument("data")
        val timeout: Int? = methodCall.argument("timeout")
        try {
            val length = this.manager.transferOut(data!!, timeout!!)
            result.success(length)
        } catch (ex: LedgerException) {
            result.error(ex.getErrorCode(), ex.message, null)
        }
    }
}

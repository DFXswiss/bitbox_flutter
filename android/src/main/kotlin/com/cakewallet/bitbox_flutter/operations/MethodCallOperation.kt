package com.cakewallet.bitbox_flutter.operations

import android.content.Context
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

abstract class MethodCallOperation {
    abstract fun onMethodCall(
        context: Context,
        methodCall: MethodCall,
        result: MethodChannel.Result
    )
}

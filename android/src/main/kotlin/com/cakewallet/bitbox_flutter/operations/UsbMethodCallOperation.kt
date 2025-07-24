package com.cakewallet.bitbox_flutter.operations

import android.hardware.usb.UsbManager

abstract class UsbMethodCallOperation(@JvmField protected var usbManager: UsbManager) : MethodCallOperation()

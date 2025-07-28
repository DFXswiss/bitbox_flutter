package com.cakewallet.bitbox_flutter

import android.hardware.usb.UsbConstants
import android.hardware.usb.UsbDevice
import android.hardware.usb.UsbEndpoint
import android.hardware.usb.UsbManager
import api.GoDeviceInfoInterface
import api.GoReadWriteCloserInterface

class GoDeviceInfo(private val device: UsbDevice?, var usbManager: UsbManager) : GoDeviceInfoInterface {
    override fun identifier(): String {
        return "androidDevice"
    }

    override fun interface_(): Long {
        return 0
    }

    @Throws(Exception::class)
    override fun open(): GoReadWriteCloserInterface? {
        if (device != null) {
            val intf = device.getInterface(0)
            val endpointA = intf.getEndpoint(0)
            val endpointB = intf.getEndpoint(1)
            val endpointIn: UsbEndpoint
            val endpointOut: UsbEndpoint
            if (endpointA.direction == UsbConstants.USB_DIR_OUT && endpointB.direction == UsbConstants.USB_DIR_IN) {
                endpointOut = endpointA
                endpointIn = endpointB
            } else if (endpointA.direction == UsbConstants.USB_DIR_IN && endpointB.direction == UsbConstants.USB_DIR_OUT) {
                endpointOut = endpointB
                endpointIn = endpointA
            } else {
                return null
            }
            val connection = usbManager.openDevice(device)

            connection.claimInterface(intf, true)

            return object : GoReadWriteCloserInterface {
                @Throws(Exception::class)
                override fun close() {
                }

                @Throws(Exception::class)
                override fun read(n: Long): ByteArray {
                    val result = ByteArray(n.toInt())
                    connection.bulkTransfer(endpointIn, result, result.size, 5000000)
                    return result
                }

                @Throws(Exception::class)
                override fun write(p0: ByteArray): Long {
                    return connection.bulkTransfer(endpointOut, p0, p0.size, 5000000).toLong()
                }
            }
        }
        throw Exception("nope")
    }

    override fun isBluetooth(): Boolean {
        return false
    }

    override fun product(): String? {
        return device!!.productName
    }

    fun manufacturer(): String? {
        return device!!.manufacturerName
    }

    override fun productID(): Long {
        return device!!.productId.toLong()
    }

    override fun serial(): String? {
        return device!!.serialNumber
    }

    override fun usagePage(): Long {
        return 0xFFFF
    }

    override fun vendorID(): Long {
        return device!!.vendorId.toLong()
    }
}

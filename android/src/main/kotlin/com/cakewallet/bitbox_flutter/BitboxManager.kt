package com.cakewallet.bitbox_flutter

import android.hardware.usb.*
import api.Api

class BitboxManager(var usbManager: UsbManager) {
    var device: UsbDevice? = null
        private set
    var connection: UsbDeviceConnection? = null
        private set
    private var usbInterface: UsbInterface? = null
    private var usbEndpointReadIn: UsbEndpoint? = null
    private var usbEndpointWriteOut: UsbEndpoint? = null

    var bitboxDevice: GoDeviceInfo? = null

    @Throws(BitBoxException::class)
    fun connectBitBox(identifier: String) {
        val device = usbManager.getDeviceList().get(identifier)
        if (device == null) {
            throw BitBoxException(0x60000, "Device with identifier not found.")
        }

        bitboxDevice = GoDeviceInfo(device, usbManager)
        Api.getDevice(bitboxDevice!!.open())
    }

    /**
     * Close the current connection with the Ledger device.
     */
    fun close() {
        if (!this.isConnected) {
            return
        }

        // Release the interface
        usbEndpointReadIn = null
        usbEndpointWriteOut = null
        connection!!.releaseInterface(usbInterface)
        connection!!.close()
        usbInterface = null
        connection = null
        device = null
    }

    /**
     * Gracefully reset the device and connection.
     */
    fun gracefullyReset() {
        if (connection != null) {
            if (usbInterface != null) {
                connection!!.releaseInterface(usbInterface)
                usbInterface = null
            }

            connection!!.close()
            connection = null
        }

        device = null
        usbEndpointReadIn = null
        usbEndpointWriteOut = null
    }

    val isConnected: Boolean
        get() = connection != null
}

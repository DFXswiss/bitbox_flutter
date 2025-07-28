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

    /**
     * Open a new usb connection with the specified device.
     *
     * @param identifier The id of the Ledger device.
     * @throws LedgerException If unable to open a connection with the device.
     */
    @Throws(LedgerException::class)
    fun open(identifier: String?) {
        val device = usbManager.getDeviceList().get(identifier)
        if (device == null) {
            throw LedgerException(0x60000, "Device with identifier not found.")
        }

        val connection = usbManager.openDevice(device)
        if (connection == null) {
            throw LedgerException(0x60001, "Unable to open connection. Do you have permission?")
        }

        // Check if the device has a configuration
        if (device.configurationCount <= 0) {
            throw LedgerException(0x60002, "No configurations found.")
        }

        val configuration: UsbConfiguration? = device.getConfiguration(0)
        connection.setConfiguration(configuration)

        // Find the interface
        val usbInterface = device.getInterface(0)

        // Claim the interface
        val claimed = connection.claimInterface(usbInterface, true)
        if (!claimed) {
            throw LedgerException(0x60004, "Unable to claim USB interface.")
        }


        val endpointA = usbInterface.getEndpoint(0)
        val endpointB = usbInterface.getEndpoint(1)
        if (endpointA.direction == UsbConstants.USB_DIR_OUT && endpointB.direction == UsbConstants.USB_DIR_IN) {
            this.usbEndpointWriteOut = endpointA
            this.usbEndpointReadIn = endpointB
        } else if (endpointA.direction == UsbConstants.USB_DIR_IN && endpointB.direction == UsbConstants.USB_DIR_OUT) {
            this.usbEndpointWriteOut = endpointB
            this.usbEndpointReadIn = endpointA
        } else {
            throw LedgerException(0x60005, "USB endpoints not found.")
        }

        this.device = device
        this.connection = connection
        this.usbInterface = usbInterface
    }

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

    @Throws(LedgerException::class)
    fun transferIn(packetSize: Int, timeout: Int): ByteArray? {
        if (!this.isConnected) {
            throw LedgerException(0x60001, "Not connected.")
        }

        try {
            val buffer = ByteArray(packetSize)
            val length = connection!!.bulkTransfer(usbEndpointReadIn, buffer, buffer.size, timeout)
            if (length < 0) {
                return ByteArray(0)
            }

            return buffer.copyOfRange(0, length)
        } catch (ex: Exception) {
            throw LedgerException(0x60006, "Error reading data from usb endpoint")
        }
    }

    @Throws(LedgerException::class)
    fun transferOut(data: ByteArray, timeout: Int): Int {
        if (!this.isConnected) {
            throw LedgerException(0x60001, "Not connected.")
        }

        try {
            return connection!!.bulkTransfer(usbEndpointWriteOut, data, data.size, timeout)
        } catch (ex: Exception) {
            throw LedgerException(0x60006, "Error writing data to usb endpoint")
        }
    }

    val isConnected: Boolean
        get() = connection != null

    fun findInterface(device: UsbDevice, interfaceClass: Int): UsbInterface? {
        val interfaceCount = device.interfaceCount
        for (i in 0 until interfaceCount) {
            val usbInterface = device.getInterface(i)
            if (usbInterface.interfaceClass == interfaceClass) {
                return usbInterface
            }
        }

        return null
    }

    fun findEndpoint(device: UsbDevice, endpointNumber: Int, direction: Int): UsbEndpoint? {
        val interfaceCount = device.interfaceCount
        for (i in 0 until interfaceCount) {
            val usbInterface = device.getInterface(i)

            for (j in 0 until usbInterface.endpointCount) {
                val endpoint = usbInterface.getEndpoint(j)
                if (endpoint.endpointNumber == endpointNumber
                    && endpoint.direction == direction
                ) {
                    return endpoint
                }
            }
        }

        return null
    }

    companion object {
        const val MAX_USBFS_BUFFER_SIZE: Int = 16384
    }
}

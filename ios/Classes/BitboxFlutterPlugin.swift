import Flutter
import UIKit
import CoreBluetooth
import Api

public class BitboxFlutterPlugin: NSObject, FlutterPlugin {
    private let bluetoothManager = BluetoothManager()
    private var scanTimer: Timer?

    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "bitbox_usb", binaryMessenger: registrar.messenger())
        let instance = BitboxFlutterPlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getDevices":
            getDevices(result: result)
        case "requestPermission":
            // On iOS, Bluetooth permission is requested automatically
            result(true)
        case "startScan":
            startScan(result: result)
        case "open":
            open(call: call, result: result)
        case "close":
            close(result: result)
        case "initBitBox":
            initBitBox(result: result)
        case "getChannelHash":
            getChannelHash(result: result)
        case "channelHashVerify":
            channelHashVerify(result: result)
        case "supportsETH":
            supportsETH(call: call, result: result)
        case "supportsERC20":
            supportsERC20(call: call, result: result)
        case "supportsLTC":
            supportsLTC(result: result)
        case "getETHAddress":
            getETHAddress(call: call, result: result)
        case "signETHRLPTransaction":
            signETHRLPTransaction(call: call, result: result)
        case "signETHMessage":
            signETHMessage(call: call, result: result)
        case "signETHTypedMessage":
            signETHTypedMessage(call: call, result: result)
        default:
            result(FlutterMethodNotImplemented)
        }
    }

    // MARK: - Device Discovery

    private func startScan(result: @escaping FlutterResult) {
        bluetoothManager.restartScan()
        result(true)
    }

    private func getDevices(result: @escaping FlutterResult) {
        // Return discovered devices as a list
        var devices: [[String: Any]] = []

        if bluetoothManager.isConnected(), let productInfo = bluetoothManager.parseProduct() {
            let deviceInfo = BluetoothDeviceInfo(bluetoothManager: bluetoothManager, productInfo: productInfo)
            devices.append([
                "identifier": deviceInfo.identifier(),
                "vendorId": deviceInfo.vendorID(),
                "productId": deviceInfo.productID(),
                "productName": deviceInfo.product(),
                "deviceId": 0,
                "deviceName": deviceInfo.product(),
                "manufacturerName": "Shift Crypto",
                "configurationCount": 1
            ])
        } else {
            // Return discovered but not yet connected peripherals
            for (_, metadata) in bluetoothManager.state.discoveredPeripherals {
                devices.append([
                    "identifier": metadata.peripheral.identifier.uuidString,
                    "vendorId": 0x03eb,
                    "productId": 0x2403,
                    "productName": metadata.peripheral.name ?? "BitBox02",
                    "deviceId": 0,
                    "deviceName": metadata.peripheral.name ?? "BitBox02",
                    "manufacturerName": "Shift Crypto",
                    "configurationCount": 1
                ])
            }
        }

        result(devices)
    }

    // MARK: - Connection

    private func open(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let args = call.arguments as? [String: Any],
              let identifier = args["identifier"] as? String,
              let uuid = UUID(uuidString: identifier) else {
            result(false)
            return
        }

        bluetoothManager.connect(to: uuid)

        // Wait for BLE connection with timeout (not full pairing)
        DispatchQueue.global().async {
            var attempts = 0
            while !self.bluetoothManager.isBLEReady() && attempts < 100 {
                Thread.sleep(forTimeInterval: 0.1)
                attempts += 1
            }

            DispatchQueue.main.async {
                result(self.bluetoothManager.isBLEReady())
            }
        }
    }

    private func close(result: @escaping FlutterResult) {
        bluetoothManager.handleDisconnect()
        result(true)
    }

    // MARK: - BitBox Initialization

    private func initBitBox(result: @escaping FlutterResult) {
        // Wait for BLE to be fully ready (connected, notifications enabled, paired)
        DispatchQueue.global().async {
            var attempts = 0
            // Wait for: connected + paired (isConnected), notifications enabled (isBLEReady), and product info
            while (!self.bluetoothManager.isConnected() || !self.bluetoothManager.isBLEReady() || self.bluetoothManager.parseProduct() == nil) && attempts < 100 {
                Thread.sleep(forTimeInterval: 0.1)
                attempts += 1
            }

            guard self.bluetoothManager.isConnected(),
                  self.bluetoothManager.isBLEReady(),
                  let productInfo = self.bluetoothManager.parseProduct() else {
                DispatchQueue.main.async {
                    print("initBitBox: not ready (isConnected=\(self.bluetoothManager.isConnected()), isBLEReady=\(self.bluetoothManager.isBLEReady()), product=\(String(describing: self.bluetoothManager.parseProduct())))")
                    result(false)
                }
                return
            }

            print("initBitBox: BLE fully ready, starting communication")

            let deviceInfo = BluetoothDeviceInfo(bluetoothManager: self.bluetoothManager, productInfo: productInfo)

            do {
                // Clear any stale data in the read buffer before starting communication
                self.bluetoothManager.clearReadBuffer()

                let rwc = try deviceInfo.open()
                // Use GetDeviceWithInfo for Bluetooth - pass version and product from BLE characteristic
                ApiGetDeviceWithInfo(rwc, productInfo.version, productInfo.product)
                let success = ApiInitDevice()
                DispatchQueue.main.async {
                    result(success)
                }
            } catch {
                print("initBitBox error: \(error)")
                DispatchQueue.main.async {
                    result(false)
                }
            }
        }
    }

    // MARK: - Channel Hash (Pairing)

    private func getChannelHash(result: @escaping FlutterResult) {
        let hash = ApiGetChannelHash()
        result(hash)
    }

    private func channelHashVerify(result: @escaping FlutterResult) {
        // Run on background thread — ChannelHashVerify calls DeviceInfo()
        // which sends an encrypted noise query to the device and blocks
        DispatchQueue.global().async {
            ApiChannelHashVerify(true)
            DispatchQueue.main.async {
                result(true)
            }
        }
    }

    // MARK: - Feature Support

    private func supportsETH(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let args = call.arguments as? [String: Any],
              let chainId = args["chainId"] as? Int else {
            result(false)
            return
        }
        result(ApiSupportsETH(chainId))
    }

    private func supportsERC20(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let args = call.arguments as? [String: Any],
              let contractAddress = args["contractAddress"] as? String else {
            result(false)
            return
        }
        result(ApiSupportsERC20(contractAddress))
    }

    private func supportsLTC(result: @escaping FlutterResult) {
        result(ApiSupportsLTC())
    }

    // MARK: - Ethereum Operations

    private func getETHAddress(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let args = call.arguments as? [String: Any],
              let chainId = args["chainId"] as? Int,
              let keypathHex = args["keypath"] as? String,
              let display = args["display"] as? Bool else {
            result("")
            return
        }

        // Run on background thread — this sends an encrypted query to the device
        DispatchQueue.global().async {
            let address = ApiETHGetAddress(chainId, keypathHex, 0, display, nil)
            DispatchQueue.main.async {
                result(address)
            }
        }
    }

    private func signETHRLPTransaction(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let args = call.arguments as? [String: Any],
              let chainId = args["chainId"] as? Int,
              let keypathHex = args["keypath"] as? String,
              let txData = args["txData"] as? String,
              let isEIP1559 = args["isEIP1559"] as? Bool else {
            result(FlutterStandardTypedData(bytes: Data()))
            return
        }

        // Run on background thread — signing requires device communication
        DispatchQueue.global().async {
            let signature = ApiETHSignRPLTx(chainId, keypathHex, txData, isEIP1559)
            DispatchQueue.main.async {
                if let sig = signature {
                    result(FlutterStandardTypedData(bytes: sig))
                } else {
                    result(FlutterStandardTypedData(bytes: Data()))
                }
            }
        }
    }

    private func signETHMessage(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let args = call.arguments as? [String: Any],
              let chainId = args["chainId"] as? Int,
              let keypathHex = args["keypath"] as? String,
              let message = args["message"] as? FlutterStandardTypedData else {
            result(FlutterStandardTypedData(bytes: Data()))
            return
        }

        // Run on background thread — signing requires device communication
        DispatchQueue.global().async {
            let signature = ApiETHSignMessage(chainId, keypathHex, message.data)
            DispatchQueue.main.async {
                if let sig = signature {
                    result(FlutterStandardTypedData(bytes: sig))
                } else {
                    result(FlutterStandardTypedData(bytes: Data()))
                }
            }
        }
    }

    private func signETHTypedMessage(call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard let args = call.arguments as? [String: Any],
              let chainId = args["chainId"] as? Int,
              let keypathHex = args["keypath"] as? String,
              let jsonMessage = args["jsonMessage"] as? FlutterStandardTypedData else {
            result(FlutterStandardTypedData(bytes: Data()))
            return
        }

        // Run on background thread — signing requires device communication
        DispatchQueue.global().async {
            let signature = ApiETHSignTypedMessage(chainId, keypathHex, jsonMessage.data)
            DispatchQueue.main.async {
                if let sig = signature {
                    result(FlutterStandardTypedData(bytes: sig))
                } else {
                    result(FlutterStandardTypedData(bytes: Data()))
                }
            }
        }
    }
}


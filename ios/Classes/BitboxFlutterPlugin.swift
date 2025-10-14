import Flutter
import UIKit

public class BitboxFlutterPlugin: NSObject, FlutterPlugin {
    private let registry = MethodCallRegistry()
    
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "bitbox_usb", binaryMessenger: registrar.messenger())
    let instance = BitboxFlutterPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
      registry.onMethodCall(call: call, result: result)
  }
}

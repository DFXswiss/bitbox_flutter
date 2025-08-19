import 'dart:typed_data';
import 'package:bitbox_flutter/usb/bitbox_device.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'Bitbox_usb_method_channel.dart'
    if (dart.library.html) 'web_ledger_usb.dart'
    if (dart.library.js) 'web_ledger_usb.dart'
    if (dart.library.js_interop) 'web_ledger_usb.dart';

abstract class BitboxUsbPlatform extends PlatformInterface {
  BitboxUsbPlatform() : super(token: _token);

  static final Object _token = Object();

  static BitboxUsbPlatform _instance = createPlatformInstance();

  /// The default instance of [BitboxUsbPlatform] to use.
  ///
  /// Defaults to [MethodChannelBitboxUsb] or [WebLedgerUsb] if running on web.
  static BitboxUsbPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [BitboxUsbPlatform] when
  /// they register themselves.
  static set instance(BitboxUsbPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<List<BitboxDevice>> getDevices();

  Future<bool> requestPermission(BitboxDevice usbDevice);

  Future<bool> open(BitboxDevice usbDevice);

  Future<Uint8List?> transferIn(int packetSize, int timeout);

  Future<int> transferOut(Uint8List data, int timeout);

  Future<bool> initBitBox();

  Future<String> getChannelHash();

  Future<bool> channelHashVerify();

  Future<bool> supportsETH(int chainId);

  Future<bool> supportsERC20(String contractAddress);

  Future<bool> supportsLTC();

  Future<String> getBTCXPub(int coinType, Uint8List keypath, int addressType, bool display);

  Future<String> getETHAddress(int chainId, Uint8List keypath, int outputType, bool display);

  Future<Uint8List> signETHTransaction(int chainId, Uint8List keypath, int nonce, String gasPrice, int gasLimit, Uint8List recipient, String value, Uint8List data, int recipientAddressCase);

  Future<Uint8List> signETHTransactionEIP1559(int chainId, Uint8List keypath, int nonce, String maxPriorityFeePerGas, String maxFeePerGas, int gasLimit, Uint8List recipient, String value, Uint8List data, int recipientAddressCase);

  Future<Uint8List> signETHMessage(int chainId, Uint8List keypath, Uint8List message);

  Future<Uint8List> signETHTypedMessage(int chainId, Uint8List keypath, Uint8List jsonMessage);

  Future<bool> close();
}

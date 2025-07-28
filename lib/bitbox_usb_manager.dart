import 'dart:async';

import 'package:bitbox_flutter/usb/ledger_usb.dart';
import 'package:bitbox_flutter/usb/ledger_usb_platform_interface.dart';
import 'package:bitbox_flutter/usb/usb_device.dart';
import 'package:flutter/services.dart';

class LedgerUsbManager {
  bool _disposed = false;

  final _bitboxUsb = LedgerUsb();

  LedgerUsbManager();

  Future<void> connect(UsbDevice usbDevice) async {
    if (_disposed) throw Exception("Is disposed");


      await _bitboxUsb.requestPermission(usbDevice);
      await _bitboxUsb.open(usbDevice);

  }

  Future<void> disconnect(String deviceId) async {
    if (_disposed) throw Exception("Is disposed");

      await _bitboxUsb.close();

  }

  Future<List<Uint8List>> sendRawOperation(
      Uint8List operation,
      ) async {
    if (_disposed) throw Exception("Is disposed");

      final apdus = [operation];
      return _bitboxUsb.exchange(apdus);
  }

  Future<bool> initBitBox() async {
      return LedgerUsbPlatform.instance.initBitBox();
  }

  Future<String> getChannelHash() async {
      return LedgerUsbPlatform.instance.getChannelHash();
  }

  Future<bool> supportsLTC() async {
      return LedgerUsbPlatform.instance.supportsLTC();
  }

  Future<bool> supportsETH(int chainId) async {
      return LedgerUsbPlatform.instance.supportsETH(chainId);
  }

  Future<bool> supportsERC20(String contractAddress) async {
      return LedgerUsbPlatform.instance.supportsERC20(contractAddress);
  }

  Future<List<UsbDevice>> get devices async {
    if (_disposed) throw Exception("Is disposed");

    return _bitboxUsb.listDevices();
  }

  Future<void> dispose() async {
    if (_disposed) return;
    _disposed = true;

      await _bitboxUsb.close();
  }
}

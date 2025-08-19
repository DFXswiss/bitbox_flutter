import 'dart:typed_data';


import 'package:bitbox_flutter/usb/bitbox_device.dart';

import 'bitbox_usb_platform_interface.dart';

class BitboxUsb {
  Future<List<BitboxDevice>> listDevices() =>
      BitboxUsbPlatform.instance.getDevices();

  Future<bool> requestPermission(BitboxDevice usbDevice) =>
      BitboxUsbPlatform.instance.requestPermission(usbDevice);

  Future<bool> open(BitboxDevice usbDevice) =>
      BitboxUsbPlatform.instance.open(usbDevice);

  Future<bool> close() => BitboxUsbPlatform.instance.close();
}

class ResponseAcc {
  final Uint8List data;
  final int length;
  final int sequence;

  ResponseAcc({
    required this.data,
    required this.length,
    required this.sequence,
  });
}

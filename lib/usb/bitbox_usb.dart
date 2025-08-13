import 'dart:typed_data';


import 'package:bitbox_flutter/usb/src/usb_packer.dart';
import 'package:bitbox_flutter/usb/usb_device.dart';

import 'bitbox_usb_platform_interface.dart';

class BitboxUsb {
  Future<List<UsbDevice>> listDevices() =>
      BitboxUsbPlatform.instance.getDevices();

  Future<bool> requestPermission(UsbDevice usbDevice) =>
      BitboxUsbPlatform.instance.requestPermission(usbDevice);

  Future<bool> open(UsbDevice usbDevice) =>
      BitboxUsbPlatform.instance.open(usbDevice);

  Future<List<Uint8List>> exchange(
    List<Uint8List> apdus, {
    int timeout = 2000,
  }) async {
    final packer = UsbPacker();
    final output = <Uint8List>[];

    // Frame the packets
    final channel = 0xff000000;
    const packetSize = 64;

    for (final apdu in apdus) {
      final blocks = await packer.pack(apdu, channel, packetSize);

      for (final block in blocks) {
        await BitboxUsbPlatform.instance.transferOut(block, timeout);
      }

      ResponseAcc? acc;
      while (packer.getReducedResult(acc) == null) {
        final response =
            await BitboxUsbPlatform.instance.transferIn(packetSize, timeout);
        if (response != null && response.isNotEmpty) {
          acc = packer.reduceResponse(acc, channel, response);
        }
      }

      final result = packer.getReducedResult(acc) ?? Uint8List.fromList([]);
      output.add(result);
    }

    return output;
  }

  Future<bool> close() {
    return BitboxUsbPlatform.instance.close();
  }
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

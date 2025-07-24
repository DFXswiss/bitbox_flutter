import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:isolate';
import 'dart:typed_data';

import 'package:bitbox_flutter/bitbox_usb_manager.dart';
import 'package:bitbox_flutter/generated_bindings.g.dart';
import 'package:bitbox_flutter/messages/bitbox02_system.pb.dart';
import 'package:bitbox_flutter/messages/hww.pb.dart';
import 'package:bitbox_flutter/usb/usb_device.dart';
import 'package:flutter/material.dart';
import 'package:ffi/ffi.dart';


void main() {
  runApp(const MyApp());
}

typedef CallbackProgress = Void Function(Int);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<UsbDevice> _devices = [];
  final _bitboxFlutterPlugin = LedgerUsbManager();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    List<UsbDevice> device;
    device = await _bitboxFlutterPlugin.devices;
    if (!mounted) return;

    setState(() {
      _devices = device;
    });
  }



  Future<void> onPressDevice(UsbDevice usbDevice) async {
    await _bitboxFlutterPlugin.connect(usbDevice);
    print("Connected!");

    final response = await _bitboxFlutterPlugin.sendRawOperation(utf8.encode('i'));

    print(response);

    // final reg = Request.create()
    //     ..deviceInfo = DeviceInfoRequest.create();
    final bbf = BitBoxFlutter(DynamicLibrary.open('bitbox.so'));

    // bbf.NewDevice();

    final productPtr = usbDevice.productName.toNativeUtf8();
    final isBB = bbf.isBitBox02(productPtr.cast(), usbDevice.vendorId, usbDevice.productId);

    malloc.free(productPtr);
    print(isBB);

    final condition = NativeCallable<CallbackProgress>.listener((int a) {
      final dylib = DynamicLibrary.open('bitbox.so');
      final bbf1 = BitBoxFlutter(dylib);
      bbf1.SetMessage("bbbbb".toNativeUtf8().cast());
      print("${a}aaaaaaa");
    });

    final addr = condition.nativeFunction.address;
    await Isolate.run(() {
      final dylib = DynamicLibrary.open('bitbox.so');
      final bbf1 = BitBoxFlutter(dylib);
      final device = bbf1.Count(1, Pointer.fromAddress(addr));
      print(device.cast<Utf8>().toDartString());

    });

  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: const Text('BitBox'),
      actions: [
        IconButton(onPressed: initPlatformState, icon: Icon(Icons.ac_unit))
      ],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _devices.length,
          itemBuilder: (context, i) {
            final device = _devices[i];
            return GestureDetector(
              onTap: () => onPressDevice(device),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(24),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: Theme.of(context).colorScheme.surfaceContainer,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Text(
                          device.productName,
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium!.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    ),
  );
}

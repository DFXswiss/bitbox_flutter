import 'dart:async';
import 'dart:ffi';

import 'package:bitbox_flutter/bitbox_usb_manager.dart';
import 'package:bitbox_flutter/usb/ledger_usb_platform_interface.dart';
import 'package:bitbox_flutter/usb/usb_device.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


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
    await LedgerUsbPlatform.instance.initBitBox();

    final ltc = await _bitboxFlutterPlugin.supportsLTC();
    final eth = await _bitboxFlutterPlugin.supportsETH(1);
    final base = await _bitboxFlutterPlugin.supportsETH(8453);
    final deuro = await _bitboxFlutterPlugin.supportsERC20("0xbA3f535bbCcCcA2A154b573Ca6c5A49BAAE0a3ea");
    final usdc = await _bitboxFlutterPlugin.supportsERC20("0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48");

    print("LTC: $ltc\nETH: $eth\nBASE: $base\ndEURO: $deuro\nUSDC: $usdc");
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: const Text('BitBox'),
      actions: [
        IconButton(onPressed: initPlatformState, icon: Icon(Icons.refresh))
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

import 'package:bitbox_flutter/usb/bitbox_usb_method_channel.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final platform = MethodChannelBitboxUsb();
  final channel = platform.methodChannel;
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;

  tearDown(() => messenger.setMockMethodCallHandler(channel, null));

  test('returns the version the platform reports', () async {
    final methods = <String>[];
    messenger.setMockMethodCallHandler(channel, (call) async {
      methods.add(call.method);
      return 'v9.26.4';
    });

    expect(await platform.getFirmwareVersion(), 'v9.26.4');
    expect(methods, ['getFirmwareVersion']);
  });

  test('returns null when the platform has no version to report', () async {
    // iOS before the product characteristic has been read, or no peripheral.
    messenger.setMockMethodCallHandler(channel, (call) async => null);

    expect(await platform.getFirmwareVersion(), isNull);
  });

  test('returns null when the platform does not implement the method',
      () async {
    // The USB platform registers no handler for this call, because USB carries
    // no product characteristic. That must surface as null rather than a
    // MissingPluginException escaping into the app — an exception here would
    // read as a device fault on every Android device.
    messenger.setMockMethodCallHandler(channel, null);

    expect(await platform.getFirmwareVersion(), isNull);
  });
}

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

  test('maps the empty string to null', () async {
    // Both bridges hand through the Go layer's zero value, which is what the
    // plugin reports until the pairing is established — initBitBox returning
    // true is not enough. Callers get one absent value to check, not two.
    messenger.setMockMethodCallHandler(channel, (call) async => '');

    expect(await platform.getFirmwareVersion(), isNull);
  });

  test('returns null when the platform reports no version', () async {
    messenger.setMockMethodCallHandler(channel, (call) async => null);

    expect(await platform.getFirmwareVersion(), isNull);
  });
}

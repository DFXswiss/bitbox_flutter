import 'package:flutter_test/flutter_test.dart';
import 'package:bitbox_flutter/bitbox_flutter.dart';
import 'package:bitbox_flutter/bitbox_flutter_platform_interface.dart';
import 'package:bitbox_flutter/bitbox_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBitboxFlutterPlatform
    with MockPlatformInterfaceMixin
    implements BitboxFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BitboxFlutterPlatform initialPlatform = BitboxFlutterPlatform.instance;

  test('$MethodChannelBitboxFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBitboxFlutter>());
  });

  test('getPlatformVersion', () async {
    BitboxFlutter bitboxFlutterPlugin = BitboxFlutter();
    MockBitboxFlutterPlatform fakePlatform = MockBitboxFlutterPlatform();
    BitboxFlutterPlatform.instance = fakePlatform;

    expect(await bitboxFlutterPlugin.getPlatformVersion(), '42');
  });
}

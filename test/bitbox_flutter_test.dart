import 'package:bitbox_flutter/usb/src/bip32_path_helper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BIPPath', () {
    test('parses a non-hardened path', () {
      final path = BIPPath.fromString('m/0/1/2');
      expect(path, isNotNull);
    });

    test('parses a hardened path with apostrophe notation', () {
      final path = BIPPath.fromString("m/44'/60'/0'/0/0");
      expect(path, isNotNull);
    });

    test('parses a hardened path with h notation', () {
      final path = BIPPath.fromString('m/44h/60h/0h/0/0');
      expect(path, isNotNull);
    });

    test('rejects empty path array', () {
      expect(() => BIPPath.fromPathArray([]), throwsException);
    });

    test('requires root when requireRoot is true', () {
      expect(
        () => BIPPath.fromString('0/1', requireRoot: true),
        throwsException,
      );
    });
  });
}

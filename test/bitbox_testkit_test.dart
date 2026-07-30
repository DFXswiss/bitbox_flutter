import 'dart:async';
import 'dart:typed_data';

import 'package:bitbox_flutter/bitbox_manager.dart';
import 'package:bitbox_flutter/testing.dart';
import 'package:bitbox_flutter/usb/bitbox_usb_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late BitboxUsbPlatform previousPlatform;

  setUp(() {
    previousPlatform = BitboxUsbPlatform.instance;
  });

  tearDown(() {
    BitboxUsbPlatform.instance = previousPlatform;
  });

  test('simulates pairing and records the connection flow', () async {
    final platform = installSimulatedBitboxPlatform(
      channelHash: 'hash-visible-to-user',
    );
    final manager = BitboxManager();

    final devices = await manager.devices;
    await manager.connect(devices.single);

    expect(await manager.initBitBox(), isTrue);
    expect(await manager.getChannelHash(), 'hash-visible-to-user');
    expect(platform.channelHashVerified, isFalse);
    expect(await manager.channelHashVerify(), isTrue);
    expect(platform.channelHashVerified, isTrue);

    expect(
        platform.calls.map((call) => call.method),
        containsAllInOrder([
          SimulatedBitboxMethod.getDevices,
          SimulatedBitboxMethod.requestPermission,
          SimulatedBitboxMethod.open,
          SimulatedBitboxMethod.initBitBox,
          SimulatedBitboxMethod.getChannelHash,
          SimulatedBitboxMethod.channelHashVerify,
        ]));
  });

  test('covers generic BTC and ETH operations without hardware', () async {
    final platform = installSimulatedBitboxPlatform(
      masterFingerprint: Uint8List.fromList(<int>[1, 2, 3, 4]),
      btcXPub: 'xpub-test',
      btcPsbt: 'signed-psbt',
      btcMessageSignature: Uint8List.fromList(<int>[5, 6]),
      ethAddress: '0x2222222222222222222222222222222222222222',
      ethTransactionSignature: Uint8List.fromList(<int>[7, 8]),
      ethEip1559Signature: Uint8List.fromList(<int>[9, 10]),
      ethRlpSignature: Uint8List.fromList(<int>[11, 12]),
      ethMessageSignature: Uint8List.fromList(<int>[13, 14]),
      ethTypedMessageSignature: Uint8List.fromList(<int>[15, 16]),
    );
    final manager = BitboxManager();
    await manager.connect((await manager.devices).single);

    expect(await manager.supportsETH(1), isTrue);
    expect(await manager.supportsERC20('0xToken'), isTrue);
    expect(await manager.supportsLTC(), isTrue);
    expect(await manager.getMasterFingerprint(), <int>[1, 2, 3, 4]);
    expect(await manager.getBTCXPub(0, "m/84'/0'/0'"), 'xpub-test');
    expect(await manager.signBTCPsbt(0, 'psbt'), 'signed-psbt');
    expect(
      await manager.signBTCMessage(
        0,
        "m/84'/0'/0'/0/0",
        Uint8List.fromList(<int>[1]),
      ),
      <int>[5, 6],
    );
    expect(
      await manager.getETHAddress(1, "m/44'/60'/0'/0/0"),
      '0x2222222222222222222222222222222222222222',
    );
    expect(
      await manager.signETHTransaction(
        1,
        "m/44'/60'/0'/0/0",
        1,
        BigInt.from(2),
        21000,
        Uint8List(20),
        BigInt.from(3),
        Uint8List(0),
        0,
      ),
      <int>[7, 8],
    );
    expect(
      await manager.signETHTransactionEIP1559(
        1,
        "m/44'/60'/0'/0/0",
        1,
        BigInt.from(2),
        BigInt.from(3),
        21000,
        Uint8List(20),
        BigInt.from(4),
        Uint8List(0),
        0,
      ),
      <int>[9, 10],
    );
    expect(
      await manager.signETHRLPTransaction(1, "m/44'/60'/0'/0/0", '0x01', true),
      <int>[11, 12],
    );
    expect(
      await manager.signETHMessage(
        1,
        "m/44'/60'/0'/0/0",
        Uint8List.fromList(<int>[1]),
      ),
      <int>[13, 14],
    );
    expect(
      await manager.signETHTypedMessage(
        1,
        "m/44'/60'/0'/0/0",
        Uint8List.fromList(<int>[123, 125]),
      ),
      <int>[15, 16],
    );

    expect(platform.count(SimulatedBitboxMethod.getETHAddress), 1);
    final call =
        platform.callsFor(SimulatedBitboxMethod.signETHTransaction).single;
    expect(call.argument<String>('gasPrice'), '2');
    expect(call.argument<String>('value'), '3');
  });

  test('simulates delays and hardware errors deterministically', () async {
    final releaseSigning = Completer<void>();
    final platform = installSimulatedBitboxPlatform(
      behaviors: <String, SimulatedBitboxBehavior>{
        SimulatedBitboxMethod.signETHMessage: (_) async {
          await releaseSigning.future;
          return Uint8List.fromList(<int>[42]);
        },
      },
    );
    final manager = BitboxManager();
    await manager.connect((await manager.devices).single);

    final pending = manager.signETHMessage(
      1,
      "m/44'/60'/0'/0/0",
      Uint8List.fromList(<int>[1]),
    );
    await Future<void>.delayed(Duration.zero);
    expect(platform.count(SimulatedBitboxMethod.signETHMessage), 1);

    releaseSigning.complete();
    expect(await pending, <int>[42]);

    platform.throwOn(
      SimulatedBitboxMethod.signETHMessage,
      StateError('signature aborted'),
    );
    expect(
      manager.signETHMessage(
        1,
        "m/44'/60'/0'/0/0",
        Uint8List.fromList(<int>[1]),
      ),
      throwsA(isA<StateError>()),
    );
  });

  test('simulates rejected pairing, unsupported capabilities, and close',
      () async {
    final platform = installSimulatedBitboxPlatform(
      channelHashVerifyResult: false,
      supportsETHResult: false,
      supportsERC20Result: false,
      supportsLTCResult: false,
    );
    final manager = BitboxManager();
    await manager.connect((await manager.devices).single);

    expect(await manager.channelHashVerify(), isFalse);
    expect(platform.channelHashVerified, isFalse);
    expect(await manager.supportsETH(1), isFalse);
    expect(await manager.supportsERC20('0xToken'), isFalse);
    expect(await manager.supportsLTC(), isFalse);

    await manager.disconnect();
    expect(platform.isOpen, isFalse);
    expect(
      manager.getMasterFingerprint(),
      throwsA(isA<SimulatedBitboxStateException>()),
    );
  });

  test('simulates no device and empty channel hash states', () async {
    final platform = installSimulatedBitboxPlatform(
      devices: const [],
      channelHash: '',
      channelHashVerifyResult: false,
      requireOpen: false,
    );
    final manager = BitboxManager();

    expect(await manager.devices, isEmpty);
    expect(await manager.getChannelHash(), isEmpty);
    expect(await manager.channelHashVerify(), isFalse);
    expect(platform.channelHashVerified, isFalse);
  });

  test('guards against signing before the simulated device is opened',
      () async {
    installSimulatedBitboxPlatform();
    final manager = BitboxManager();

    expect(
      manager.signETHMessage(
        1,
        "m/44'/60'/0'/0/0",
        Uint8List.fromList(<int>[1]),
      ),
      throwsA(isA<SimulatedBitboxStateException>()),
    );
  });

  test('reports the simulated device status', () async {
    installSimulatedBitboxPlatform();
    final manager = BitboxManager();
    await manager.connect((await manager.devices).single);

    expect(await manager.getDeviceStatus(), 'initialized');
  });

  test('reports an unseeded device status', () async {
    final platform = installSimulatedBitboxPlatform(
      deviceStatus: 'uninitialized',
    );
    final manager = BitboxManager();
    await manager.connect((await manager.devices).single);

    expect(await manager.getDeviceStatus(), 'uninitialized');
    expect(platform.count(SimulatedBitboxMethod.getDeviceStatus), 1);
  });

  test('reports the firmware version once initBitBox has run', () async {
    final platform = installSimulatedBitboxPlatform(
      firmwareVersion: 'v9.26.4',
    );
    final manager = BitboxManager();
    await manager.connect((await manager.devices).single);
    await manager.initBitBox();

    expect(await manager.getFirmwareVersion(), 'v9.26.4');
    expect(platform.count(SimulatedBitboxMethod.getFirmwareVersion), 1);
  });

  test('reports a null firmware version when the device has not told yet',
      () async {
    // The device is initialised but reported no version. Null must be
    // distinguishable from an old version by the caller, never conflated.
    installSimulatedBitboxPlatform(firmwareVersion: null);
    final manager = BitboxManager();
    await manager.connect((await manager.devices).single);
    await manager.initBitBox();

    expect(await manager.getFirmwareVersion(), isNull);
  });

  test('reports no firmware version before initBitBox has run', () async {
    // open() only establishes the link; initBitBox is what binds the device
    // the version is read from. The simulator must not be more permissive than
    // hardware, or a consumer's gate passes its tests and reads null in the
    // field.
    installSimulatedBitboxPlatform(firmwareVersion: 'v9.26.4');
    final manager = BitboxManager();
    await manager.connect((await manager.devices).single);

    expect(await manager.getFirmwareVersion(), isNull);
  });

  test('does not carry a firmware version across a reconnect', () async {
    // The dangerous case: close, attach a different device, and read the
    // version without initialising it. The previous device's version must not
    // answer, or a gate clears a device it never inspected.
    installSimulatedBitboxPlatform(firmwareVersion: 'v9.26.4');
    final manager = BitboxManager();
    await manager.connect((await manager.devices).single);
    await manager.initBitBox();
    expect(await manager.getFirmwareVersion(), 'v9.26.4');

    await manager.disconnect();
    await manager.connect((await manager.devices).single);

    expect(await manager.getFirmwareVersion(), isNull);
  });

  test('does not carry a firmware version into a reopen without disconnect',
      () async {
    // Reconnecting without closing first is the same hazard: hardware rebinds
    // an uninitialised device, so the simulator must forget too.
    installSimulatedBitboxPlatform(firmwareVersion: 'v9.26.4');
    final manager = BitboxManager();
    await manager.connect((await manager.devices).single);
    await manager.initBitBox();
    expect(await manager.getFirmwareVersion(), 'v9.26.4');

    await manager.connect((await manager.devices).single);

    expect(await manager.getFirmwareVersion(), isNull);
  });

  test('forgets the firmware version when initBitBox fails', () async {
    final platform = installSimulatedBitboxPlatform(
      firmwareVersion: 'v9.26.4',
    );
    final manager = BitboxManager();
    await manager.connect((await manager.devices).single);
    await manager.initBitBox();

    platform.throwOn(
      SimulatedBitboxMethod.initBitBox,
      StateError('pairing rejected'),
    );

    await expectLater(manager.initBitBox(), throwsA(isA<StateError>()));
    expect(await manager.getFirmwareVersion(), isNull);
  });

  test('requires an open channel to read the firmware version', () async {
    installSimulatedBitboxPlatform(firmwareVersion: 'v9.26.4');
    final manager = BitboxManager();

    expect(
      () => manager.getFirmwareVersion(),
      throwsA(isA<SimulatedBitboxStateException>()),
    );
  });
}

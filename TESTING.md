# Testing

## Fast PR gate

Run the same checks the `PR checks` workflow enforces. CI fails on any of
these, so it is cheaper to catch them locally first:

```sh
# Flutter
dart format --set-exit-if-changed --output=none lib test example/lib example/test
flutter analyze --fatal-infos
flutter test

# Go (from go/)
cd go
go vet ./...
go test -race -timeout 60s ./...
```

The Go API tests include a generic fake BitBox device. It is not
app-specific: it can simulate pairing, channel hashes, confirmations,
capabilities, ETH address lookup, ETH signing, BTC xpubs, BTC message signing,
device errors, missing devices, and recovered panics without connecting
hardware.

## Test layers

Use the lowest layer that can expose the bug:

- Official simulator: validates against BitBox firmware behavior. The upstream
  simulator binaries currently referenced by `bitbox02-api-go` are Linux amd64,
  so this is best suited for Linux CI or explicit hardware-wallet integration
  jobs.
- U2FHID/BLE contract tests: validate framing assumptions, stale-buffer
  behavior, repeated poll responses, and the iOS BLE bridge source contract.
  These tests do not emulate firmware.
- Native API fake: validates gomobile-exported API behavior, zero values,
  panic recovery, and BTC/ETH request plumbing without USB, BLE, or firmware.
- Flutter API fake: validates app/plugin flows through `BitboxManager` without
  USB, BLE, native code, or firmware.

Keep physical BitBox smoke tests for behavior that requires the real device:
firmware UI, touch confirmation timing, pairing UX, cable/BLE hardware
instability, and secure-chip behavior.

## Reusable Flutter testkit

Flutter apps can import the standalone Dart simulator:

```dart
import 'package:bitbox_flutter/testing.dart';

final bitbox = installSimulatedBitboxPlatform(
  channelHash: 'hash-shown-to-the-user',
);
```

The simulator replaces `BitboxUsbPlatform.instance`, so app tests can exercise
their real production BitboxManager flow without USB, BLE, or a physical
BitBox. Save and restore the previous platform in `setUp`/`tearDown` when a test
suite needs isolation.

The Dart simulator is deliberately not app-specific. It covers device
discovery/no-device states, permission/open/close, pairing channel hashes
including empty hashes and rejected confirmations, capability checks, BTC/ETH
signing, custom per-method delays, custom per-method errors, custom method
behavior, and a call log that tests can assert against.

## Official BitBox simulator

`github.com/BitBoxSwiss/bitbox02-api-go` also ships official `TestSimulator*`
integration tests. Their README documents:

```sh
go test -v -run TestSimulator ./...
SIMULATOR=/path/to/simulator go test -v -run TestSimulator ./...
```

The published simulator binaries referenced by the dependency are Linux amd64
binaries, so they are best suited for Linux CI or a Linux development machine.
The fast fake-device tests in this plugin remain the default local and PR gate.

## Regression coverage

The tests explicitly guard against these hardware-wallet regressions:

- gomobile-exported API functions without `recoverPanic`
- iOS BLE packet deduplication being reintroduced
- iOS BLE read timeout regressing from 60 seconds to 10 seconds
- U2FHID assumptions drifting away from the iOS BLE bridge contract
- Pairing/channel-hash behavior not being simulatable without hardware
- An unknown firmware version being conflated with an old one. The SDK panics
  when `Version()` is read before the device reports one — normal until
  `initBitBox` binds the device — so `FirmwareVersion` relies on `recoverPanic`
  to return `""`, which the Dart side maps to null. The Go test drives that
  panic path, and the testkit withholds the version until `initBitBox` has run,
  so a consumer's version gate cannot pass its tests and then read null on
  hardware.
- A version answering for a pairing that never completed. Bluetooth knows the
  version before `initBitBox`, so the binding tracks whether the pairing was
  actually established and withholds the version — and the capabilities derived
  from it — until then. The signal is the channel hash being device-verified,
  NOT `Init()` returning without error: the SDK returns nil on a decline, having
  already dropped both ciphers. Covered on the Go side for a decline, a failed
  init, a failed re-init, and an init that lands after the device was replaced.
- A device that is gone still answering. On iOS both `handleDisconnect` and
  `connect(to:)` call `ReleaseDevice`, since nothing rebinds the Go side until
  `initBitBox` — so a peripheral that drops on its own, and one that is replaced
  without closing first, both clear the binding. Android releases in
  `CloseOperation` and, before the rebind, in `ConnectBitBoxOperation`. All four
  are pinned from CI by source assertions on `Bluetooth.swift`,
  `BitboxFlutterPlugin.swift` and the two Kotlin operations, the same way the
  60s read timeout is, plus Go and testkit coverage. Those assertions scope to
  the enclosing function, ignore commented-out calls, check the
  release-before-rebind ordering on the connect path, and fail loudly if they
  can no longer find the function rather than degrading into a file-wide search.
- The placeholder version `GetDeviceWithInfo` substitutes when the device's own
  version string does not parse escaping as if it were the device's. It is
  withheld from `FirmwareVersion` *and* from `SupportsETH` / `SupportsERC20`,
  which the SDK derives from the version — so unparseable reads as unknown
  everywhere rather than as a specific wrong number a gate would act on. The
  testkit applies the same rule to its configured version, so a consumer's
  capability gate does not pass against the simulator and read false on
  hardware. A behaviour installed with `when` moves only the method it targets.
- `bitbox`, its synthetic-version flag and its initialised flag being written
  without synchronisation. They are replaced as a set under `deviceMu`, and
  every export takes a single snapshot, because close/disconnect runs on a
  different thread than an in-flight signature or pairing handshake. A dedicated
  test drives readers and writers concurrently, so `go test -race` fails if the
  lock is removed.
- ETH/BTC success, error, and panic flows not being simulatable without hardware
- App-level Flutter flows not being testable with deterministic BitBox delays
  and aborts

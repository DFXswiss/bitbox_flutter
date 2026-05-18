# Testing

## Fast PR gate

Run the same checks the `PR checks` workflow enforces. CI fails on any of
these, so it is cheaper to catch them locally first:

```sh
# Flutter
dart format --set-exit-if-changed --output=none lib test example/lib example/test
flutter analyze --no-fatal-infos
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
- ETH/BTC success, error, and panic flows not being simulatable without hardware
- App-level Flutter flows not being testable with deterministic BitBox delays
  and aborts

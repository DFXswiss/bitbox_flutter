# bitbox_flutter

A Flutter plugin for the [BitBox02](https://bitbox.swiss) hardware wallet. It connects over USB on Linux and Android and over BLE on iOS, then exposes signing and address operations for Bitcoin, Litecoin, Ethereum, and ERC20 tokens. The plugin keeps its native bridges thin and pushes the hardware-wallet protocol into a shared Go core (gomobile-exported) so the same firmware logic backs every platform.

## Supported devices and chains

| | Supported |
|---|---|
| Devices | BitBox02 |
| Transports | USB (Linux, Android), BLE (iOS) |
| Chains | Bitcoin (BTC), Litecoin (LTC), Ethereum (ETH), ERC20 tokens |

Operations exposed through the plugin include device discovery, pairing and channel-hash verification, master-fingerprint and capability queries (`supportsETH`, `supportsERC20`, `supportsLTC`), BTC xpub export and PSBT/message signing, and ETH address export plus transaction (legacy and EIP-1559), message, and EIP-712 typed-message signing. The full Dart surface is declared on `BitboxUsbPlatform` in `lib/usb/bitbox_usb_platform_interface.dart`.

## Usage

```dart
import 'package:bitbox_flutter/bitbox_flutter.dart';
```

`bitbox_manager.dart` and the `BitboxDevice` model are the public entry points. For tests, import the standalone simulator instead — see [Testing](#testing).

## Architecture

The plugin is layered so that protocol logic lives in one place and the per-platform code stays minimal:

```
Dart (lib/)
  bitbox_manager.dart, lib/usb/*  — public API, method-channel client
        |
        v  MethodChannel
Native bridge (thin)
  android/  Kotlin — MethodCallRegistry + operations/*Operation.kt
  ios/      Swift  — BitboxFlutterPlugin, MethodCallRegistry, Bluetooth
        |
        v  gomobile FFI
Go core (go/api)
  api.go, bitcoin.go, ethereum.go, bitbox_device.go
  every gomobile-exported entry point starts with `defer recoverPanic("<name>")`
```

- **Dart (`lib/`)** declares the abstract `BitboxUsbPlatform`, implements it over a `MethodChannel` in `lib/usb/bitbox_usb_method_channel.dart`, and wraps it for consumers in `bitbox_manager.dart`.
- **Native bridges** are deliberately thin. On Android each method maps to a `*Operation.kt` registered in `MethodCallRegistry.kt`; on iOS the equivalent dispatch lives in `MethodCallRegistry.swift`, with `Bluetooth.swift` handling the BLE transport. Bridges marshal arguments and delegate to the Go core rather than implementing wallet logic themselves.
- **Go core (`go/api`)** is gomobile-exported and built on `github.com/BitBoxSwiss/bitbox02-api-go`. Every exported function (for example `GetDevice`, `GetChannelHash`, `InitDevice`, `SupportsETH`) begins with `defer recoverPanic("<name>")` (see `go/api/safety.go`) so a Go-side panic returns a zero value instead of crossing the gomobile boundary into the host engine. A separate `go/u2fhid` package holds the USB/BLE framing layer.

## Rebuilding the gomobile bindings

The native binding artifacts are vendored and checked in; rebuild them only when the gomobile-exported Go surface changes.

- **Android** — run `run_build_tool_android.sh <output>` to produce `android/libs/api.aar` via `gomobile bind -target=android`.
- **iOS** — regenerate the `Api.xcframework` through the equivalent gomobile iOS pipeline.
- **Dart FFI header** — `ffigen_config.yaml` drives `ffigen` to regenerate `lib/generated_bindings.g.dart` from `go/bitbox.h`.

The checked-in artifacts must match the Go module path declared in `go/go.mod` (`github.com/DFXswiss/bitbox_flutter`). Regenerate and commit the artifacts together with the Go change so the boundary stays consistent.

## Testing

The plugin ships a reusable, hardware-free Dart testkit. Consumer apps can drive their real `BitboxManager` flow against a simulator with no USB, BLE, native code, or firmware:

```dart
import 'package:bitbox_flutter/testing.dart';

final bitbox = installSimulatedBitboxPlatform(
  channelHash: 'hash-shown-to-the-user',
);
```

The simulator swaps out `BitboxUsbPlatform.instance` and covers device discovery, pairing, capability checks, BTC/ETH signing, per-method delays and errors, and an assertable call log. See [TESTING.md](TESTING.md) for the full test layers (official simulator, U2FHID/BLE contract tests, native API fake, Flutter API fake) and the regressions they guard.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for the branching model (`develop` is the default branch), the local/CI PR gate, the steps to add a new platform method end to end, and the automated release flow. Source: [github.com/DFXswiss/bitbox_flutter](https://github.com/DFXswiss/bitbox_flutter).

## License

MIT — see [LICENSE](LICENSE).

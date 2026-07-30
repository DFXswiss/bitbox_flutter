## 0.0.11

* Expose `BitboxManager.getFirmwareVersion()`, returning the connected device's
  main firmware version `v`-prefixed (e.g. `v9.26.4`). It is readable once
  `initBitBox()` has succeeded, on both transports, and costs no device
  round-trip afterwards. Null means the version is not known — before
  `initBitBox`, after `close`, or when the device reported a version that could
  not be parsed — and never "old firmware", so a host gating on a minimum
  version must treat the two apart and refuse rather than pass when it is
  absent.
* Disconnecting now also releases the device inside the native binding, on an
  explicit `close()` and on a peripheral that drops on its own. Previously the
  binding kept the previous device, so `getDeviceStatus()` (and the new
  `getFirmwareVersion()`) could answer for a device that was no longer attached.
* When a Bluetooth device reports a version string that cannot be parsed, the
  binding no longer answers `supportsETH()` / `supportsERC20()` from the
  placeholder version it substitutes internally. Both report no support while
  the version is unknown, matching `getFirmwareVersion()` returning null.

## 0.0.10

* Expose `BitboxManager.getDeviceStatus()`, returning the SDK's cached firmware
  status string (`uninitialized` / `seeded` / `initialized`). It reads the locally
  cached status without a device round-trip, so the host app can tell an unseeded
  device (no wallet set up yet) apart from a transient empty address read after
  pairing instead of failing both the same way.

## 0.0.9

* Android: force 16 KB ELF page alignment on the gomobile-built native libs
  (`-extldflags=-Wl,-z,max-page-size=16384`). `libgojni.so` was the only 4 KB-aligned
  library in the bundle; Android 15+ devices using 16 KB memory pages (and Google
  Play) require ≥ 16 KB alignment.

## 0.0.8

* Android: run the blocking `initBitBox` (Noise pairing handshake) off the serial
  MethodChannel task queue so concurrent `getChannelHash` polls are serviced while
  init waits for the on-device confirmation. The pairing code now appears in the app
  and on the device simultaneously instead of only after confirming on the device
  (iOS was already unaffected). `initBitBox` now also propagates the real init result.

## 0.0.1

* TODO: Describe initial release.

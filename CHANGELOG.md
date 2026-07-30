## 0.0.11

* Expose `BitboxManager.getFirmwareVersion()`, returning the connected device's
  main firmware version `v`-prefixed (e.g. `v9.26.4`). It is readable once
  `initBitBox()` has succeeded, on both transports, and costs no device
  round-trip afterwards. Null means the version is not known — before
  `initBitBox`, after `close`, or when the device reported a version that could
  not be parsed — and never "old firmware", so a host gating on a minimum
  version must treat the two apart and refuse rather than pass when it is
  absent.
* Disconnecting now also releases the device inside the native binding — on an
  explicit `close()`, on a peripheral that drops on its own, and when connecting
  to another device without closing first. Previously the binding kept the
  previous device, so `getDeviceStatus()` (and the new `getFirmwareVersion()`)
  could answer for a device that was no longer attached.
* `supportsETH()` / `supportsERC20()` are derived from the firmware version, so
  they now report no support whenever that version is unknown: before
  `initBitBox()` succeeds, and when the device reported a version string the
  binding could not parse (where it previously answered from an internal
  placeholder). Both track `getFirmwareVersion()` returning null.
* Over Bluetooth the version is known before pairing, but `getFirmwareVersion()`
  withholds it until `initBitBox()` succeeds — a declined or failed pairing must
  not vouch for a channel that was never established. Note the SDK reports a
  decline by leaving the channel hash unverified rather than by returning an
  error, so `initBitBox()` still resolves true there; only the version and the
  capabilities derived from it are withheld.
* Testkit: `SimulatedBitboxPlatform.supportsLTC()` now reports false until
  `initBitBox()` has run, matching `supportsETH()` / `supportsERC20()`. A
  consumer test that asserted it straight after `connect()` needs an
  `initBitBox()` first.

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

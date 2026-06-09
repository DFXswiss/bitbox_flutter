## 0.0.8

* Android: run the blocking `initBitBox` (Noise pairing handshake) off the serial
  MethodChannel task queue so concurrent `getChannelHash` polls are serviced while
  init waits for the on-device confirmation. The pairing code now appears in the app
  and on the device simultaneously instead of only after confirming on the device
  (iOS was already unaffected). `initBitBox` now also propagates the real init result.

## 0.0.1

* TODO: Describe initial release.

## 0.0.8

* Android: show the pairing code in the app and on the device simultaneously by
  running the blocking Noise pairing handshake off the serial MethodChannel queue
  so concurrent `getChannelHash` polls are serviced while init awaits confirmation.
* Refactor the BitBox testkit API surface and regenerate the gomobile artefacts.
* Drop `print()` from production `lib/` and harden `flutter analyze` to `--fatal-infos`.
* Add `CONTRIBUTING.md` aligning with the BitBox-stack workflow.

## 0.0.7

* Add a reusable BitBox testkit.

## 0.0.6

* Rename the Go module path to `github.com/DFXswiss/bitbox_flutter`.
* CI: add Go tests, `dart format`, YAML lint, and workflow permission lockdown.

## 0.0.5

* BLE: dedup single-frame init retransmits and add panic recovery for `GetDevice`.

## 0.0.4

* Add the pull-request CI workflow and `BIPPath` smoke tests.

## 0.0.3

* BLE read path: scoped deduplication plus a 60s timeout for long signing flows.

## 0.0.2

* BLE read path: remove broken packet deduplication.
* BLE write: use guard-unwrapped locals to prevent crashes.

## 0.0.1

* Initial release of the BitBox02 Flutter plugin.
* Support BTC, LTC, ETH, and ERC20 chains over a gomobile-exported Go core.
* Sign PSBTs, Ethereum RLP transactions, and Bitcoin messages; fetch addresses
  and the master fingerprint.
* USB transport on Android plus iOS BLE support for the BitBox02 Nova.
* Add the auto release-PR and auto-tag/GitHub-release CI workflows.

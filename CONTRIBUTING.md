# Contributing to bitbox_flutter

A Flutter plugin for the BitBox02 hardware wallet (USB on Linux/Android, BLE on iOS). PRs welcome — this guide covers the branching model, the local PR gate, and the release flow so contributions land predictably.

## Branching model

- `develop` is the **default branch**. Open every feature, fix, and chore PR against `develop`.
- `main` is the release branch. The only thing that lands there is a `Release: develop -> main` PR, opened automatically by `.github/workflows/auto-release-pr.yaml` on each push to `develop`.
- Feature branches: `feat/<short-slug>`, `fix/<short-slug>`, `chore/<short-slug>`. Branch off the latest `develop`.

## PR gate

CI runs three jobs on every PR and every push to `develop` / `main` (`.github/workflows/pull-request.yaml`):

| Job | What it does |
|---|---|
| `Flutter analyze + test` | `dart format --set-exit-if-changed`, `flutter analyze --no-fatal-infos`, `flutter test` |
| `Go unit tests` | `go vet ./...`, `go test -race -timeout 60s ./...` against `go/api` and `go/u2fhid` |
| `Workflow YAML lint` | `yaml.safe_load` on every `.github/**/*.y*ml` |

Run the same gate locally — see [TESTING.md → Fast PR gate](TESTING.md#fast-pr-gate). Lint failures upstream are wasted CI minutes; catch them locally.

## Adding a new platform method

1. **Dart side**: declare the abstract method on `BitboxUsbPlatform` (`lib/usb/bitbox_usb_platform_interface.dart`) and implement it on `BitboxUsbMethodChannel` (`lib/usb/bitbox_usb_method_channel.dart`).
2. **Go side** (gomobile-exported): add the corresponding function in `go/api/*.go`, wrapped with `defer recoverPanic("<name>")` so a Go-side crash returns a zero value instead of taking the engine down.
3. **Native bridges**: wire the new method through `android/src/main/kotlin/.../MethodCallRegistry.kt` and the iOS handler in `ios/Classes/BitboxFlutterPlugin.swift`.
4. **Testkit**: implement the method on `SimulatedBitboxPlatform` in `lib/testing/bitbox_testkit.dart` so consumer apps can exercise it without hardware. Add a method-name constant to `SimulatedBitboxMethod`.
5. **Tests**:
   - `test/bitbox_testkit_test.dart` — Dart-side flow against the simulator.
   - `go/api/fake_bitbox_test.go` — Go-side wiring against the `fakeBitboxDevice` fake.
6. **Docs**: if behaviour is non-obvious, add a paragraph to TESTING.md so future contributors know what's covered.

## Release flow

Releases are fully automated. Once a contributor's PR is merged into `develop`:

1. `auto-release-pr.yaml` fires on the push to `develop` and opens (or refreshes) the `Release: develop -> main` PR.
2. A maintainer reviews the rollup and merges it. The merge commit on `main` triggers `auto-tag.yaml`.
3. `auto-tag.yaml` patch-bumps the latest `vX.Y.Z` tag, pushes the new tag, and creates a GitHub Release with auto-generated notes.

No manual tagging. If a hotfix needs a specific version (skip-patch, force-minor), open an issue first — the auto-tagger is intentionally not overridable to avoid drift.

## Commit messages

- Title in imperative present: `fix(ble): drop stale read buffer after timeout`.
- Reference issues by number when applicable: `Closes #123`.
- Body explains **why**, not what (the diff shows the what).
- No `Co-Authored-By` or tool-generated trailers in DFXswiss repos.

## Hardware-wallet specifics

- Touching `ios/Classes/Bluetooth.swift` requires extra care: U2FHID `readFrame()` has no SEQ validation, so the BLE bridge MUST not let duplicate notifications leak into the read stream. `go/api/ios_bluetooth_regression_test.go` locks in the 60s read timeout — keep it.
- Touching `go/api/api.go` exported (`//export`) functions: every entry point must start with `defer recoverPanic("<name>")`. The `TestExportedAPIsReturnZeroValuesWithoutDeviceInsteadOfCrashing` test exists to enforce that the gomobile boundary never panics into the host engine.
- New gomobile-exported types: regenerate the iOS xcframework and `android/libs/api.aar` via `run_build_tool_android.sh` and the equivalent iOS pipeline before release. The checked-in artefacts must match the Go module path declared in `go/go.mod`.

## Code style

- **Dart**: `dart format` is enforced. No `print` in production code (`lib/`) — use a passed-in logger or remove. `example/lib/` may use `print` for demonstration.
- **Go**: gofmt-clean, `go vet` clean. Errors propagate; the gomobile boundary in `go/api/` is the only place that swallows errors (returning zero values) so panics don't cross into the host engine.
- **Swift / Kotlin**: follow each platform's standard formatter. Native bridges should be thin — push logic into the Go layer wherever possible.

## Security

- Never log seed phrases, private keys, or unredacted device serials.
- Don't add network calls — this plugin talks to local hardware only.
- For sensitive issues, mail security@dfx.swiss rather than filing a public issue.

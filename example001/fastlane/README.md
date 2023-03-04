fastlane documentation
----

# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```sh
xcode-select --install
```

For _fastlane_ installation instructions, see [Installing _fastlane_](https://docs.fastlane.tools/#installing-fastlane)

# Available Actions

### fetch_dev_certificates

```sh
[bundle exec] fastlane fetch_dev_certificates
```

Fetches development certificates and provisioning profiles

### fetch_distribution_certificates

```sh
[bundle exec] fastlane fetch_distribution_certificates
```

Fetches distribution certificates and provisioning profiles

### update_devices

```sh
[bundle exec] fastlane update_devices
```

Update device list

### update_localizable_strings

```sh
[bundle exec] fastlane update_localizable_strings
```

Update localizable strings from webtranslate

### tests

```sh
[bundle exec] fastlane tests
```

Run all Zattoo TV Tests: Unit, UI, and Top Shelf Extension

### unit_tests

```sh
[bundle exec] fastlane unit_tests
```

Run Unit tests

### ui_tests

```sh
[bundle exec] fastlane ui_tests
```

Run UI Tests

### lint

```sh
[bundle exec] fastlane lint
```

Check style and conventions

### release

```sh
[bundle exec] fastlane release
```

Release build to TestFlight

### release_preview

```sh
[bundle exec] fastlane release_preview
```

Release a Preview version to TestFlight

### release_applestore

```sh
[bundle exec] fastlane release_applestore
```

Release a new version for boxes on the Apple Stores

### screenshots

```sh
[bundle exec] fastlane screenshots
```

Generate screenshots

----

This README.md is auto-generated and will be re-generated every time [_fastlane_](https://fastlane.tools) is run.

More information about _fastlane_ can be found on [fastlane.tools](https://fastlane.tools).

The documentation of _fastlane_ can be found on [docs.fastlane.tools](https://docs.fastlane.tools).

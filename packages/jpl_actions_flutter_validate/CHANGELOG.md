## [2.1.5] - February 18th, 2025

* Disabling `dart format` until [this issue](https://github.com/dart-lang/sdk/issues/60163) is resolved.


## [2.1.4] - February 18th, 2025

* Attempting to fix format when working with generated code


## [2.1.3] - January 12th, 2025

* Fixing license checker


## [2.1.2] - January 11th, 2025

* Reverting Flutter test


## [2.1.1] - January 11th, 2025

* Trying to diagnose grep issue


## [2.1.0] - January 11th, 2025

* Updated to use [license_checker2](https://pub.dev/packages/license_checker2) as opposed to [license_checker](https://pub.dev/packages/license_checker) to properly support the new dart workspace.


## [2.0.12] - January 11th, 2025

* Fixed check for flutter to not false flag `flutter_lints`.


## [2.0.11] - May 27th, 2024

* Added check for build runner before attempting codegen


## [2.0.10] - May 27th, 2024

* Updated to codegen the example when codegen is true


## [2.0.9] - May 27th, 2024

* Added `skip_sarif` option.


## [2.0.8] - May 27th, 2024

* Fixed references to `sarif_category`.


## [2.0.7] - May 27th, 2024

* Added `sarif_category` to allow for multiple sarif files to be uploaded for monorepos.


## [2.0.6] - May 16th, 2024

* Added license checker to ensure non-OSS licensed dependencies get included.


## [2.0.5] - May 16th, 2024

* Fixed typo


## [2.0.4] - May 16th, 2024

* Added input for sarif file name.


## [2.0.3] - May 16th, 2024

* Explicitly defined pubspec.lock file


## [2.0.2] - May 16th, 2024

* Switching from reusable action to discrete steps.


## [2.0.1] - May 15th, 2024

* Trying the `1.6.2-beta1` listed in the docs.


## [2.0.0] - May 15th, 2024

* Added the [Google osv-scanner](https://google.github.io/osv-scanner) to perform security scans.


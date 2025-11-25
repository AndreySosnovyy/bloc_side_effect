## TODO: version
* Update Dart SDK constraint from `>=2.12.0` to `>=3.0.0`
* Update `flutter_bloc` dependency from `^8.1.4` to `^9.1.1`
* Fix `BlocBuilderWithSideEffects` and `BlocConsumerWithSideEffects` architecture - listener now wraps builder to prevent multiple subscriptions on rebuild
* Fix `BlocSideEffectListener` - add `mounted` check before invoking listener
* Fix library name in main export file
* Fix typos and errors in documentations
* Fix typos in README.md
* Add `homepage` field to pubspec.yaml
* Add installation section to README.md
* Remove unused `didChangeDependencies` in `BlocSideEffectListener`
* Fix example - use `StatefulWidget` with proper bloc disposal

## 0.0.1
* Initial release

## 0.0.2
* Fix readme (typo)
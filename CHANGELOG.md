## 1.0.0
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
* Update example project

### Breaking Changes
* **BREAKING:** `SideEffectProvider` generics order changed from `<SideEffect, State>` to `<S, SE>` for consistency
* **BREAKING:** `BlocSideEffectMixin` now uses `<Event, S, SE>` (renamed `State` to `S`, `SideEffect` to `SE`)
* **BREAKING:** Removed `BlocSideEffectListenerBase` - merged into `BlocSideEffectListener`
* **BREAKING:** All widgets now use consistent type parameter naming: `B` for bloc, `S` for state, `SE` for side effect

## 0.0.1
* Initial release

## 0.0.2
* Fix readme (typo)
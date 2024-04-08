Reworked [flutter_bloc](https://pub.dev/packages/flutter_bloc) package.

## Motivation

It contains most core Mys from original package and a new one which is Side Effects.

Side Effects My is inspired by [side_effect_bloc](https://pub.dev/packages/side_effect_bloc)
but also with some new utility widgets based on default flutter_bloc's ones. These can be used
like a full alternative but with Side Effects if provided. Here is the list of them: 
- BlocBuilder → BlocBuilderWithSideEffects 
- BlocListener → BlocListenerWithSideEffects 
- BlocConsumer → BlocConsumerWithSideEffects.

Please take attention that some of the original classes are not presented in this package!
These are:
- DI-related (BlocProvider, MultiBlocProvider, RepositoryProvider, MultiRepositoryProvider)
- Cubit
- Other (MultiBlocListener, BlocSelector).

## Usage of Side Effect

### Mixin

To start using Side Effects add the mixin to your normal bloc:

```dart
class MyBloc extends Bloc<MyEvent, MyState>
    with SideEffectBlocMixin<MyEvent, MyState, MySideEffect> {
  MyBloc() : super(MyState.initial());
}
```

### Emit side effect

To emit a side effect use `emitSideEffect` method in your handlers.

### Listen side effect

You can use any of 3 available widgets for listening side effects:
- BlocConsumerWithSideEffects
- BlocListenerWithSideEffects
- BlocBuilderWithSideEffects

```dart
BlocConsumerWithSideEffects<MyBloc, MyState, MySideEffect>(
    bloc: myBlocInstance,
    sideEffectsListener: (context, sideEffect) {
      // Handle side effect
    },
    listener: (context, state) {
      // Normal states listener   
    },
    builder: (context, state) {
      // Normal builder
      return MyView();
    }
)
```

### Bloc widgets for bloc without side effects

If you don't have side effects for bloc, but still need to listen its state
changes in UI, just abandon it by placing `dynamic` type instead of Side Effect
class type like so:
```dart
BlocConsumerWithSideEffects<MyBloc, MyState, dymanic>(...)
```

and don't provide `sideEffectsListener` as it is an optional parameter for all
bloc widgets!
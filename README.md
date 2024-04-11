Reworked [flutter_bloc](https://pub.dev/packages/flutter_bloc) package.

## Motivation

This package is here to solve some problems that you may face during developing
mobile apps using BLoC state management. What kind of problems:
1) Putting a mess of parameters in your state classes just to react to them in UI.
Now you can get rid of it in favor of using separate stream of side effects.
2) Emitting states just because you need to show a toast or make any small action
in UI even if your business logic doesn't imply this emits.
3)  A necessity to emit two different states in a row just to perform something
in UI because current implementation of flutter_bloc intentionally doesn't
listen if states are of the same type in sequence.

Side Effects feature is inspired by [side_effect_bloc](https://pub.dev/packages/side_effect_bloc)
but also with some new utility widgets based on original flutter_bloc's ones. Use
them as usual ones but provide a handler for side effects. Here is the list of these widgets:

- BlocBuilder → BlocBuilderWithSideEffects
- BlocListener → BlocListenerWithSideEffects
- BlocConsumer → BlocConsumerWithSideEffects.

If you don't need the side effect feature for specific bloc just use original widgets
in UI. But now you must provide a `bloc` parameter as it is required. This is the
only difference. These widgets are:

- BLocBuilder
- BlocListener
- BlocCustomer.

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
    with BlocSideEffectMixin<MyEvent, MyState, MySideEffect> {
  MyBloc() : super(MyState.initial());
}
```

### Emit side effect

If you added the mixin to your bloc, the new method will be available.
To emit a side effect use `emitSideEffect` in your handlers.
```dart
Future<void> _throwError(
  AuthenticateMyEvent event,
  Emitter<MyState> emitter,
) async {
  try {
    await repository.authenticate();    
  } on Object catch (e) {
    emitter(const MyState.error(message: e.toString()));
    emitSideEffect(const MySideEffect.error(message: 'My toast error message'));  
  }
}
```

### Handling side effects

You can use any of available widgets for handling side effects in UI:

- BlocConsumerWithSideEffects
- BlocListenerWithSideEffects
- BlocBuilderWithSideEffects
- BlocSideEffectListener

```dart
@override
Widget build(BuildContext context) {
  return BlocConsumerWithSideEffects<MyBloc, MyState, MySideEffect>(
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
  );
}
```

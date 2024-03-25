Reworked [flutter_bloc](https://pub.dev/packages/flutter_bloc) package.

## Motivation

It contains most core features from original package and a new one which is Side Effects.

Side Effects feature is inspired by [side_effect_bloc](https://pub.dev/packages/side_effect_bloc)
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

## Usage of Side Effect (TODO)

### Adding mixin

```dart
class FeatureBloc extends Bloc<FeatureEvent, FeatureState>
    with SideEffectBlocMixin<FeatureEvent, FeatureState, FeatureSideEffect> {
  FeatureBloc() : super(FeatureState.initial());
}
```

### Emit side effect

```dart
class FeatureBloc extends SideEffectBloc<FeatureEvent, FeatureState, FeatureSideEffect>{
  FeatureBloc() : super(FeatureState.initial()){        
    on<ItemClick>(
      (event, emit) {
        emitSideEffect(FeatureSideEffect.openItem(event.id));
      },
    );
  }
}
```

### Listen side effect

```dart
BlocSideEffectListener<FeatureBloc, FeatureSideEffect>(
    listener: (BuildContext context, FeatureSideEffect sideEffect) {
        sideEffect.when(
            goToNext: () => Navigator.of(context).pushNamed("/sub"),
            openSnackbar: () {
                const snackBar = SnackBar(
                    content: Text('Yay! A SnackBar!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
            });
    },
    child: ViewBody(),
)
```
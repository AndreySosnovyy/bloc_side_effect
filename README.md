<a href="https://pub.dev/packages/flutter_bloc_side_effect"><img src="https://img.shields.io/pub/v/flutter_bloc_side_effect.svg" alt="Pub"></a>


Extended [bloc](https://pub.dev/packages/bloc) with a separate stream for events that should be consumed only once. 

A separate thread allows you to separate events related to navigation a toast/snackbar message, for example, from the state of the bloc.

## Usage

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
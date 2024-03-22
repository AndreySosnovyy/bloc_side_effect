import 'package:bloc_side_effect/side_effect_bloc.dart';
import 'package:bloc_side_effect/src/side_effect_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Extended version of [BlocListener] which also allows to listen to mixed side
/// effects (named `SE` in generics) if provided
class BlocListenerWithSideEffects<
    Bloc extends SideEffectProvider<SideEffect, State>,
    State,
    SideEffect> extends StatelessWidget {
  const BlocListenerWithSideEffects({
    required this.listener,
    this.child,
    this.sideEffectsListener,
    this.listenWhen,
    this.bloc,
    Key? key,
  }) : super(key: key);

  final BlocWidgetSideEffectListener<SideEffect>? sideEffectsListener;

  final BlocWidgetListener<State> listener;

  final Bloc? bloc;

  final BlocListenerCondition<State>? listenWhen;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<Bloc, State>(
      listener: listener,
      listenWhen: listenWhen,
      bloc: bloc,
      child: sideEffectsListener != null
          ? BlocSideEffectListener<Bloc, State, SideEffect>(
              listener: sideEffectsListener!,
              child: child,
            )
          : child,
    );
  }
}

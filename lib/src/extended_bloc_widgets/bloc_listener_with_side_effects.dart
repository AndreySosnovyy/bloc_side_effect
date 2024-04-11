library flutter_bloc_side_effect;

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide BlocListener;
import 'package:flutter_bloc_side_effect/src/bloc_side_effect_listener.dart';
import 'package:flutter_bloc_side_effect/src/reworked_bloc_widgets/bloc_listener.dart'
    as rfb;
import 'package:flutter_bloc_side_effect/src/side_effect_provider.dart';

/// {@template bloc_listener_with_side_effects}
/// Extended version of [rfb.BlocListener] which also allows listening to the
/// mixed side effects if provided
/// {@endtemplate}
class BlocListenerWithSideEffects<
    Bloc extends SideEffectProvider<SideEffect, State>,
    State,
    SideEffect> extends StatelessWidget {
  /// {@macro bloc_listener_with_side_effects}
  const BlocListenerWithSideEffects({
    required this.listener,
    required this.bloc,
    required this.sideEffectsListener,
    this.child,
    this.listenWhen,
    Key? key,
  }) : super(key: key);

  /// {@macro flutter_bloc_side_effect_listener_base.listener}
  final BlocWidgetSideEffectListener<SideEffect> sideEffectsListener;

  /// {@macro bloc_listener.listener}
  final BlocWidgetListener<State> listener;

  /// {@macro bloc_listener.bloc}
  final Bloc bloc;

  /// {@macro bloc_listener.listenWhen}
  final BlocListenerCondition<State>? listenWhen;

  /// {@macro bloc_listener.child}
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return rfb.BlocListener<Bloc, State>(
      listener: listener,
      listenWhen: listenWhen,
      bloc: bloc,
      child: BlocSideEffectListener<Bloc, State, SideEffect>(
        listener: sideEffectsListener,
        bloc: bloc,
        child: child,
      ),
    );
  }
}

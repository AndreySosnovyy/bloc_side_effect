import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_side_effect/src/bloc_side_effect_listener.dart';
import 'package:flutter_bloc_side_effect/src/side_effect_provider.dart';

/// {@template bloc_listener_with_side_effects}
/// Extended version of [BlocListener] which also allows listening to the mixed
/// side effects if provided
/// {@endtemplate}
class BlocListenerWithSideEffects<
    Bloc extends SideEffectProvider<SideEffect, State>,
    State,
    SideEffect> extends StatelessWidget {
  /// {@macro bloc_listener_with_side_effects}
  const BlocListenerWithSideEffects({
    required this.listener,
    required this.bloc,
    this.child,
    this.sideEffectsListener,
    this.listenWhen,
    Key? key,
  }) : super(key: key);

  /// {@macro bloc_widget_side_effect_listener}
  final BlocWidgetSideEffectListener<SideEffect>? sideEffectsListener;

  /// Same as the 'listener' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  final BlocWidgetListener<State> listener;

  /// {@macro flutter_bloc_side_effect_listener_base.bloc}
  /// Same as the 'bloc' property for BlocListener from flutter_bloc package.
  ///
  /// See the documentation there if you need.
  final Bloc bloc;

  /// Same as the 'listenWhen' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  final BlocListenerCondition<State>? listenWhen;

  /// {@macro flutter_bloc_side_effect_listener_base.child}
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
              bloc: bloc,
              child: child,
            )
          : child,
    );
  }
}

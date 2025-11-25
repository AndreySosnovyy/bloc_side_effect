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
class BlocListenerWithSideEffects<B extends SideEffectProvider<S, SE>, S, SE>
    extends StatelessWidget {
  /// {@macro bloc_listener_with_side_effects}
  const BlocListenerWithSideEffects({
    required this.listener,
    required this.bloc,
    required this.sideEffectsListener,
    this.child,
    this.listenWhen,
    Key? key,
  }) : super(key: key);

  /// The [BlocWidgetSideEffectListener] which will be called on every
  /// `side effect` emit.
  final BlocWidgetSideEffectListener<SE> sideEffectsListener;

  /// The [BlocWidgetListener] which will be called on every state change.
  final BlocWidgetListener<S> listener;

  /// The [bloc] whose `state` and `side effect` will be listened to.
  final B bloc;

  /// Optional condition to determine whether to call [listener].
  final BlocListenerCondition<S>? listenWhen;

  /// The widget which will be rendered as a descendant.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return rfb.BlocListener<B, S>(
      listener: listener,
      listenWhen: listenWhen,
      bloc: bloc,
      child: BlocSideEffectListener<B, S, SE>(
        listener: sideEffectsListener,
        bloc: bloc,
        child: child,
      ),
    );
  }
}

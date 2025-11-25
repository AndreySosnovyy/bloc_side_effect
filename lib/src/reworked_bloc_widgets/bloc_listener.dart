library flutter_bloc_side_effect;

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as fb;

/// {@template bloc_listener}
/// Reworked version of [fb.BlocListener] which gets bloc not from context but
/// by provided parameter
/// {@endtemplate}
class BlocListener<B extends fb.StateStreamable<S>, S> extends StatelessWidget {
  /// {@macro bloc_listener}
  const BlocListener({
    required this.listener,
    required this.bloc,
    this.child,
    this.listenWhen,
    Key? key,
  }) : super(key: key);

  /// The [fb.BlocWidgetListener] which will be called on every state change.
  final fb.BlocWidgetListener<S> listener;

  /// The [bloc] whose `state` will be listened to.
  final B bloc;

  /// Optional condition to determine whether to call [listener].
  final fb.BlocListenerCondition<S>? listenWhen;

  /// The widget which will be rendered as a descendant.
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return fb.BlocListener<B, S>(
      listener: listener,
      listenWhen: listenWhen,
      bloc: bloc,
      child: child,
    );
  }
}

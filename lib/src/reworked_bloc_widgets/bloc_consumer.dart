library flutter_bloc_side_effect;

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as fb;

/// {@template bloc_consumer}
/// Reworked version of [fb.BlocConsumer] which gets bloc not from context but
/// by provided parameter
/// {@endtemplate}
class BlocConsumer<B extends fb.StateStreamable<S>, S> extends StatelessWidget {
  /// {@macro bloc_consumer}
  const BlocConsumer({
    required this.builder,
    required this.listener,
    required this.bloc,
    this.buildWhen,
    this.listenWhen,
    Key? key,
  }) : super(key: key);

  /// The [fb.BlocWidgetBuilder] which will be called on every state change.
  final fb.BlocWidgetBuilder<S> builder;

  /// The [fb.BlocWidgetListener] which will be called on every state change.
  final fb.BlocWidgetListener<S> listener;

  /// Optional condition to determine whether to rebuild.
  final fb.BlocBuilderCondition<S>? buildWhen;

  /// Optional condition to determine whether to call [listener].
  final fb.BlocListenerCondition<S>? listenWhen;

  /// The [bloc] whose `state` will be used.
  final B bloc;

  @override
  Widget build(BuildContext context) {
    return fb.BlocConsumer<B, S>(
      builder: builder,
      listener: listener,
      bloc: bloc,
      buildWhen: buildWhen,
      listenWhen: listenWhen,
    );
  }
}

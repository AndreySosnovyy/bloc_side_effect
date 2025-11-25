library flutter_bloc_side_effect;

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as fb;

/// {@template bloc_builder}
/// Reworked version of [fb.BlocBuilder] which gets bloc not from context but
/// by provided parameter
/// {@endtemplate}
class BlocBuilder<B extends fb.StateStreamable<S>, S> extends StatelessWidget {
  /// {@macro bloc_builder}
  const BlocBuilder({
    required this.builder,
    required this.bloc,
    this.buildWhen,
    Key? key,
  }) : super(key: key);

  /// The [fb.BlocWidgetBuilder] which will be called on every state change.
  final fb.BlocWidgetBuilder<S> builder;

  /// Optional condition to determine whether to rebuild.
  final fb.BlocBuilderCondition<S>? buildWhen;

  /// The [bloc] whose `state` will be used to build the widget.
  final B bloc;

  @override
  Widget build(BuildContext context) {
    return fb.BlocBuilder<B, S>(
      buildWhen: buildWhen,
      bloc: bloc,
      builder: builder,
    );
  }
}

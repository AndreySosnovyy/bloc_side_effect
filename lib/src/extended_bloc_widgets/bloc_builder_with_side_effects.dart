library flutter_bloc_side_effect;

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide BlocBuilder;
import 'package:flutter_bloc_side_effect/src/bloc_side_effect_listener.dart';
import 'package:flutter_bloc_side_effect/src/reworked_bloc_widgets/bloc_builder.dart'
    as rfb;
import 'package:flutter_bloc_side_effect/src/side_effect_provider.dart';

/// {@template bloc_builder_with_side_effects}
/// Extended version of [rfb.BlocBuilder] which also allows listening to the
/// mixed side effects if provided
/// {@endtemplate}
class BlocBuilderWithSideEffects<B extends SideEffectProvider<S, SE>, S, SE>
    extends StatelessWidget {
  /// {@macro bloc_builder_with_side_effects}
  const BlocBuilderWithSideEffects({
    required this.builder,
    required this.bloc,
    required this.sideEffectsListener,
    this.buildWhen,
    Key? key,
  }) : super(key: key);

  /// The [BlocWidgetSideEffectListener] which will be called on every
  /// `side effect` emit.
  final BlocWidgetSideEffectListener<SE> sideEffectsListener;

  /// The [BlocWidgetBuilder] which will be called on every state change.
  final BlocWidgetBuilder<S> builder;

  /// Optional condition to determine whether to rebuild.
  final BlocBuilderCondition<S>? buildWhen;

  /// The [bloc] whose `state` and `side effect` will be listened to.
  final B bloc;

  @override
  Widget build(BuildContext context) {
    return BlocSideEffectListener<B, S, SE>(
      bloc: bloc,
      listener: sideEffectsListener,
      child: rfb.BlocBuilder<B, S>(
        buildWhen: buildWhen,
        bloc: bloc,
        builder: builder,
      ),
    );
  }
}

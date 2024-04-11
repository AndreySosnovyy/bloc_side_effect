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
class BlocBuilderWithSideEffects<
    Bloc extends SideEffectProvider<SideEffect, State>,
    State,
    SideEffect> extends StatelessWidget {
  /// {@macro bloc_builder_with_side_effects}
  const BlocBuilderWithSideEffects({
    required this.builder,
    required this.bloc,
    required this.sideEffectsListener,
    this.buildWhen,
    Key? key,
  }) : super(key: key);

  /// {@macro flutter_bloc_side_effect_listener_base.listener}
  final BlocWidgetSideEffectListener<SideEffect> sideEffectsListener;

  /// {@macro bloc_builder.builder}
  final BlocWidgetBuilder<State> builder;

  /// {@macro bloc_builder.buildWhen}
  final BlocBuilderCondition<State>? buildWhen;

  /// {@macro bloc_builder.bloc}
  final Bloc bloc;

  @override
  Widget build(BuildContext context) {
    return rfb.BlocBuilder<Bloc, State>(
      buildWhen: buildWhen,
      bloc: bloc,
      builder: (context, state) {
        return BlocSideEffectListener<Bloc, State, SideEffect>(
          bloc: bloc,
          listener: sideEffectsListener,
          child: builder(context, state),
        );
      },
    );
  }
}

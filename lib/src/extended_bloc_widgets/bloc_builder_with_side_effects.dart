import 'package:bloc_side_effect/side_effect_bloc.dart';
import 'package:bloc_side_effect/src/side_effect_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Extended version of [BlocBuilder] which also allows to listen to mixed side
/// effects if provided
class BlocBuilderWithSideEffects<
    Bloc extends SideEffectProvider<SideEffect, State>,
    State,
    SideEffect> extends BlocBuilder<Bloc, State> {
  const BlocBuilderWithSideEffects({
    required BlocWidgetBuilder<State> builder,
    this.sideEffectsListener,
    BlocBuilderCondition<State>? buildWhen,
    Bloc? bloc,
    Key? key,
  }) : super(
          key: key,
          bloc: bloc,
          buildWhen: buildWhen,
          builder: builder,
        );

  final BlocWidgetSideEffectListener<SideEffect>? sideEffectsListener;

  @override
  Widget build(BuildContext context, State state) {
    return sideEffectsListener != null
        ? BlocSideEffectListener<Bloc, State, SideEffect>(
            listener: sideEffectsListener!,
            child: builder(context, state),
          )
        : builder(context, state);
  }
}

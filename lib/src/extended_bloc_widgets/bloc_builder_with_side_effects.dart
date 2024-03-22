import 'package:bloc_side_effect/side_effect_bloc.dart';
import 'package:bloc_side_effect/src/side_effect_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// {@template bloc_builder_with_side_effects}
/// Extended version of [BlocBuilder] which also allows listening to the mixed
/// side effects if provided
/// {@endtemplate}
class BlocBuilderWithSideEffects<
    Bloc extends SideEffectProvider<SideEffect, State>,
    State,
    SideEffect> extends BlocBuilder<Bloc, State> {
  /// {@macro bloc_builder_with_side_effects}
  const BlocBuilderWithSideEffects({
    /// Same as the 'builder' property for BlocListener from flutter_bloc
    /// package.
    ///
    /// See the documentation there if you need.
    required BlocWidgetBuilder<State> builder,
    this.sideEffectsListener,

    /// Same as the 'buildWhen' property for BlocListener from flutter_bloc
    /// package.
    ///
    /// See the documentation there if you need.
    BlocBuilderCondition<State>? buildWhen,

    /// {@macro bloc_side_effect_listener_base.bloc}
    /// Same as the 'bloc' property for BlocListener from flutter_bloc package.
    ///
    /// See the documentation there if you need.
    Bloc? bloc,
    Key? key,
  }) : super(
          key: key,
          bloc: bloc,
          buildWhen: buildWhen,
          builder: builder,
        );

  /// {@macro bloc_side_effect_listener_base.listener}
  final BlocWidgetSideEffectListener<SideEffect>? sideEffectsListener;

  @override
  Widget build(BuildContext context, State state) {
    return sideEffectsListener != null
        ? BlocSideEffectListener<Bloc, State, SideEffect>(
            bloc: bloc,
            listener: sideEffectsListener!,
            child: builder(context, state),
          )
        : builder(context, state);
  }
}

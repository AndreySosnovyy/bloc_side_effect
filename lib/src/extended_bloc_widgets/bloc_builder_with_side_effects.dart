import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_side_effect/src/bloc_side_effect_listener.dart';
import 'package:flutter_bloc_side_effect/src/side_effect_provider.dart';

/// {@template bloc_builder_with_side_effects}
/// Extended version of [BlocBuilder] which also allows listening to the mixed
/// side effects if provided
/// {@endtemplate}
class BlocBuilderWithSideEffects<
    Bloc extends SideEffectProvider<SideEffect, State>,
    State,
    SideEffect> extends StatelessWidget {
  /// {@macro bloc_builder_with_side_effects}
  const BlocBuilderWithSideEffects({
    required this.builder,
    required this.bloc,
    this.sideEffectsListener,
    this.buildWhen,
    Key? key,
  }) : super(key: key);

  /// {@macro flutter_bloc_side_effect_listener_base.listener}
  final BlocWidgetSideEffectListener<SideEffect>? sideEffectsListener;

  /// Same as the 'builder' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  final BlocWidgetBuilder<State> builder;

  /// Same as the 'buildWhen' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  final BlocBuilderCondition<State>? buildWhen;

  /// {@macro flutter_bloc_side_effect_listener_base.bloc}
  /// Same as the 'bloc' property for BlocListener from flutter_bloc package.
  ///
  /// See the documentation there if you need.
  final Bloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Bloc, State>(
      buildWhen: buildWhen,
      bloc: bloc,
      builder: (context, state) => sideEffectsListener != null
          ? BlocSideEffectListener<Bloc, State, SideEffect>(
              bloc: bloc,
              listener: sideEffectsListener!,
              child: builder(context, state),
            )
          : builder(context, state),
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_side_effect/src/bloc_side_effect_listener.dart';
import 'package:flutter_bloc_side_effect/src/side_effect_provider.dart';

/// {@template bloc_consumer_with_side_effects}
/// Extended version of [BlocConsumer] which also allows listening to the mixed
/// side effects if provided
/// {@endtemplate}
class BlocConsumerWithSideEffects<
    Bloc extends SideEffectProvider<SideEffect, State>,
    State,
    SideEffect> extends StatelessWidget {
  /// {@macro bloc_consumer_with_side_effects}
  const BlocConsumerWithSideEffects({
    required this.builder,
    required this.listener,
    this.sideEffectsListener,
    this.buildWhen,
    this.listenWhen,
    this.bloc,
    Key? key,
  }) : super(key: key);

  /// {@macro bloc_widget_side_effect_listener}
  final BlocWidgetSideEffectListener<SideEffect>? sideEffectsListener;

  /// Same as the 'builder' property for BlocListener from flutter_bloc package.
  ///
  /// See the documentation there if you need.
  final BlocWidgetBuilder<State> builder;

  /// Same as the 'listener' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  final BlocWidgetListener<State> listener;

  /// Same as the 'buildWhen' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  final BlocBuilderCondition<State>? buildWhen;

  /// Same as the 'listenWhen' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  final BlocListenerCondition<State>? listenWhen;

  /// {@macro flutter_bloc_side_effect_listener_base.bloc}
  /// Same as the 'bloc' property for BlocListener from flutter_bloc package.
  ///
  /// See the documentation there if you need.
  final Bloc? bloc;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Bloc, State>(
      builder: (context, state) => sideEffectsListener != null
          ? BlocSideEffectListener<Bloc, State, SideEffect>(
              listener: sideEffectsListener!,
              child: builder(context, state),
            )
          : builder(context, state),
      listener: listener,
      bloc: bloc,
      buildWhen: buildWhen,
      listenWhen: listenWhen,
    );
  }
}

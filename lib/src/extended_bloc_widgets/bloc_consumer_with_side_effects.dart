import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart' hide BlocConsumer;
import 'package:flutter_bloc_side_effect/src/bloc_side_effect_listener.dart';
import 'package:flutter_bloc_side_effect/src/reworked_bloc_widgets/bloc_consumer.dart'
    as rfb;
import 'package:flutter_bloc_side_effect/src/side_effect_provider.dart';

/// {@template bloc_consumer_with_side_effects}
/// Extended version of [rfb.BlocConsumer] which also allows listening to the mixed
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
    required this.bloc,
    required this.sideEffectsListener,
    this.buildWhen,
    this.listenWhen,
    Key? key,
  }) : super(key: key);

  /// {@macro flutter_bloc_side_effect_listener_base.listener}
  final BlocWidgetSideEffectListener<SideEffect> sideEffectsListener;

  /// {@macro bloc_consumer.builder}
  final BlocWidgetBuilder<State> builder;

  /// {@macro bloc_consumer.listener}
  final BlocWidgetListener<State> listener;

  /// {@macro bloc_consumer.buildWhen}
  final BlocBuilderCondition<State>? buildWhen;

  /// {@macro bloc_consumer.listenWhen}
  final BlocListenerCondition<State>? listenWhen;

  /// {@macro bloc_consumer.bloc}
  final Bloc bloc;

  @override
  Widget build(BuildContext context) {
    return rfb.BlocConsumer<Bloc, State>(
      builder: (context, state) {
        return BlocSideEffectListener<Bloc, State, SideEffect>(
          bloc: bloc,
          listener: sideEffectsListener,
          child: builder(context, state),
        );
      },
      listener: listener,
      bloc: bloc,
      buildWhen: buildWhen,
      listenWhen: listenWhen,
    );
  }
}

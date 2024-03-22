import 'package:bloc_side_effect/side_effect_bloc.dart';
import 'package:bloc_side_effect/src/side_effect_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Extended version of [BlocConsumer] which also allows to listen to mixed side
/// effects (named `SE` in generics) if provided
class BlocConsumerWithSideEffects<
    Bloc extends SideEffectProvider<SideEffect, State>,
    State,
    SideEffect> extends StatelessWidget {
  const BlocConsumerWithSideEffects({
    required this.builder,
    required this.listener,
    this.sideEffectsListener,
    this.buildWhen,
    this.listenWhen,
    this.bloc,
    Key? key,
  }) : super(key: key);

  final BlocWidgetSideEffectListener<SideEffect>? sideEffectsListener;

  final BlocWidgetBuilder<State> builder;

  final BlocWidgetListener<State> listener;

  final BlocBuilderCondition<State>? buildWhen;

  final BlocListenerCondition<State>? listenWhen;

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

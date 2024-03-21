import 'package:bloc_side_effect/side_effect_bloc.dart';
import 'package:bloc_side_effect/src/side_effect_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Extended version of [BlocConsumer] which also allows to listen to mixed side
/// effects
class BlocConsumerWithSideEffects<B extends SideEffectProvider<SE, S>, S, SE>
    extends StatelessWidget {
  const BlocConsumerWithSideEffects({
    required this.builder,
    required this.listener,
    required this.sideEffectsListener,
    this.buildWhen,
    this.listenWhen,
    this.bloc,
    Key? key,
  }) : super(key: key);

  final BlocWidgetSideEffectListener<SE> sideEffectsListener;

  final BlocWidgetBuilder<S> builder;

  final BlocWidgetListener<S> listener;

  final BlocBuilderCondition<S>? buildWhen;

  final BlocListenerCondition<S>? listenWhen;

  final B? bloc;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<B, S>(
      builder: (context, state) => BlocSideEffectListener<B, S, SE>(
        listener: sideEffectsListener,
        child: builder(context, state),
      ),
      listener: listener,
      bloc: bloc,
      buildWhen: buildWhen,
      listenWhen: listenWhen,
    );
  }
}

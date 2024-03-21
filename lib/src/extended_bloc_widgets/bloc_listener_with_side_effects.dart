import 'package:bloc_side_effect/side_effect_bloc.dart';
import 'package:bloc_side_effect/src/side_effect_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Extended version of [BlocListener] which also allows to listen to mixed side
/// effects
class BlocListenerWithSideEffects<B extends SideEffectProvider<SE, S>, S, SE>
    extends StatelessWidget {
  const BlocListenerWithSideEffects({
    required this.child,
    required this.listener,
    required this.sideEffectsListener,
    this.listenWhen,
    this.bloc,
    Key? key,
  }) : super(key: key);

  final BlocWidgetSideEffectListener<SE> sideEffectsListener;

  final BlocWidgetListener<S> listener;

  final B? bloc;

  final BlocListenerCondition<S>? listenWhen;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<B, S>(
      listener: listener,
      listenWhen: listenWhen,
      bloc: bloc,
      child: BlocSideEffectListener<B, S, SE>(
        listener: sideEffectsListener,
        child: child,
      ),
    );
  }
}

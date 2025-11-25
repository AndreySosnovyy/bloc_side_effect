library flutter_bloc_side_effect;

import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_side_effect/src/side_effect_provider.dart';

/// Signature for the `listener` function which takes the `BuildContext` along
/// with the `side effect`.
typedef BlocWidgetSideEffectListener<SideEffect> = void Function(
  BuildContext context,
  SideEffect sideEffect,
);

/// {@template flutter_bloc_side_effect_listener}
/// Takes a [BlocWidgetSideEffectListener] and a [bloc] and invokes
/// the [listener] in response to `side effect` emits in the [bloc].
/// It should be used for functionality that needs to occur only in response to
/// a `side effect` emit such as navigation, showing a `SnackBar`, showing
/// a `Dialog`, etc...
/// The [listener] is guaranteed to only be called once for each `side effect`.
///
/// ```dart
/// BlocSideEffectListener<BlocA, BlocAState, BlocASideEffect>(
///   bloc: blocA,
///   listener: (context, sideEffect) {
///     // do stuff here based on BlocA's side effect
///   },
///   child: Container(),
/// )
/// ```
/// {@endtemplate}
class BlocSideEffectListener<B extends SideEffectProvider<SideEffect, S>, S,
    SideEffect> extends BlocSideEffectListenerBase<B, S, SideEffect> {
  /// {@macro flutter_bloc_side_effect_listener}
  const BlocSideEffectListener({
    required BlocWidgetSideEffectListener<SideEffect> listener,
    required B bloc,
    Widget? child,
    Key? key,
  }) : super(
          key: key,
          child: child,
          listener: listener,
          bloc: bloc,
        );
}

/// {@template flutter_bloc_side_effect_listener_base}
/// Base for widgets that listen to side effect emits in a specified [bloc].
///
/// A [BlocSideEffectListenerBase] is stateful and maintains the side effect
/// subscription. The type of the side effect and what happens with each
/// side effect emit is defined by sub-classes.
/// {@endtemplate}
abstract class BlocSideEffectListenerBase<
    B extends SideEffectProvider<SideEffect, State_>,
    State_,
    SideEffect> extends StatefulWidget {
  /// {@macro bloc_listener_base}
  const BlocSideEffectListenerBase({
    required this.listener,
    required this.bloc,
    this.child,
    Key? key,
  }) : super(key: key);

  /// {@template flutter_bloc_side_effect_listener_base.child}
  /// The widget which will be rendered as a descendant of the
  /// [BlocSideEffectListenerBase].
  /// {@endtemplate}
  final Widget? child;

  /// {@template flutter_bloc_side_effect_listener_base.bloc}
  /// The [bloc] whose `side effect` will be listened to.
  /// Whenever the [bloc]'s `side effect` emits, [listener] will be invoked.
  /// {@endtemplate}
  final B bloc;

  /// {@template flutter_bloc_side_effect_listener_base.listener}
  /// The [BlocWidgetSideEffectListener] which will be called on every
  /// `side effect` emit. This [listener] should be used for any code which
  /// needs to execute in response to a `side effect` emit.
  /// {@endtemplate}
  final BlocWidgetSideEffectListener<SideEffect> listener;

  @override
  State<BlocSideEffectListenerBase<B, State_, SideEffect>> createState() =>
      _BlocSideEffectListenerBaseState<B, State_, SideEffect>();
}

class _BlocSideEffectListenerBaseState<
    B extends SideEffectProvider<SideEffect, S>,
    S,
    SideEffect> extends State<BlocSideEffectListenerBase<B, S, SideEffect>> {
  StreamSubscription<SideEffect>? _subscription;
  late B _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = widget.bloc;
    _subscribe();
  }

  @override
  void didUpdateWidget(BlocSideEffectListenerBase<B, S, SideEffect> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.bloc != widget.bloc) {
      if (_subscription != null) {
        _unsubscribe();
        _bloc = widget.bloc;
      }
      _subscribe();
    }
  }

  @override
  void dispose() {
    _unsubscribe();
    super.dispose();
  }

  void _subscribe() {
    _subscription = _bloc.sideEffects.listen((sideEffect) {
      if (mounted) widget.listener(context, sideEffect);
    });
  }

  void _unsubscribe() {
    _subscription?.cancel();
    _subscription = null;
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ?? const SizedBox.shrink();
  }
}

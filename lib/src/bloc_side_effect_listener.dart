library flutter_bloc_side_effect;

import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_side_effect/src/side_effect_provider.dart';

/// Signature for the `listener` function which takes the `BuildContext` along
/// with the `side effect`.
typedef BlocWidgetSideEffectListener<SE> = void Function(
  BuildContext context,
  SE sideEffect,
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
class BlocSideEffectListener<B extends SideEffectProvider<S, SE>, S, SE>
    extends StatefulWidget {
  /// {@macro flutter_bloc_side_effect_listener}
  const BlocSideEffectListener({
    required this.listener,
    required this.bloc,
    this.child,
    Key? key,
  }) : super(key: key);

  /// The widget which will be rendered as a descendant of the
  /// [BlocSideEffectListener].
  final Widget? child;

  /// The [bloc] whose `side effect` will be listened to.
  /// Whenever the [bloc]'s `side effect` emits, [listener] will be invoked.
  final B bloc;

  /// The [BlocWidgetSideEffectListener] which will be called on every
  /// `side effect` emit. This [listener] should be used for any code which
  /// needs to execute in response to a `side effect` emit.
  final BlocWidgetSideEffectListener<SE> listener;

  @override
  State<BlocSideEffectListener<B, S, SE>> createState() =>
      _BlocSideEffectListenerState<B, S, SE>();
}

class _BlocSideEffectListenerState<B extends SideEffectProvider<S, SE>, S, SE>
    extends State<BlocSideEffectListener<B, S, SE>> {
  StreamSubscription<SE>? _subscription;
  late B _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = widget.bloc;
    _subscribe();
  }

  @override
  void didUpdateWidget(BlocSideEffectListener<B, S, SE> oldWidget) {
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

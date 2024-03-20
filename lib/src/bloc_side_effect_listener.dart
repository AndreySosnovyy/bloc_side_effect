library bloc_side_effect;

import 'dart:async';

import 'package:bloc_side_effect/src/side_effect_provider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/single_child_widget.dart';

/// Mixin which allows `MultiBlocSideEffectListener` to infer the types
/// of multiple [BlocWidgetSideEffectListener]s.
mixin BlocSideEffectListenerSingleChildWidget on SingleChildWidget {}

/// Signature for the `listener` function which takes the `BuildContext` along
/// with the `side effect`.
typedef BlocWidgetSideEffectListener<SE> = void Function(
  BuildContext context,
  SE sideEffect,
);

/// {@template bloc_side_effect_listener}
/// Takes a [BlocWidgetSideEffectListener] and an optional [bloc] and invokes
/// the [listener] in response to `side effect` emits in the [bloc].
/// It should be used for functionality that needs to occur only in response to
/// a `side effect` emit such as navigation, showing a `SnackBar`, showing
/// a `Dialog`, etc...
/// The [listener] is guaranteed to only be called once for each `side effect`.
///
/// If the [bloc] parameter is omitted, [BlocListener] will automatically
/// perform a lookup using [BlocProvider] and the current `BuildContext`.
///
/// ```dart
/// BlocSideEffectListener<BlocA, BlocASideEffect>(
///   listener: (context, sideEffect) {
///     // do stuff here based on BlocA's side effect
///   },
///   child: Container(),
/// )
/// ```
/// Only specify the [bloc] if you wish to provide a [bloc] that is otherwise
/// not accessible via [BlocProvider] and the current `BuildContext`.
///
/// ```dart
/// BlocSideEffectListener<BlocA, BlocASideEffect>(
///   value: blocA,
///   listener: (context, sideEffect) {
///     // do stuff here based on BlocA's side effect
///   },
///   child: Container(),
/// )
/// ```
/// {@endtemplate}
class BlocSideEffectListener<B extends SideEffectProvider<SE, S>, S, SE>
    extends BlocSideEffectListenerBase<B, S, SE>
    with BlocSideEffectListenerSingleChildWidget {
  /// {@macro bloc_side_effect_listener}
  const BlocSideEffectListener({
    required BlocWidgetSideEffectListener<SE> listener,
    B? bloc,
    Widget? child,
    Key? key,
  }) : super(
          key: key,
          child: child,
          listener: listener,
          bloc: bloc,
        );
}

/// {@template bloc_side_effect_listener_base}
/// Base for widgets that listen to side effect emits in a specified [bloc].
///
/// A [BlocSideEffectListenerBase] is stateful and maintains the side effect
/// subscription. The type of the side effect and what happens with each
/// side effect emit is defined by sub-classes.
/// {@endtemplate}
abstract class BlocSideEffectListenerBase<B extends SideEffectProvider<SE, S>,
    S, SE> extends SingleChildStatefulWidget {
  /// {@macro bloc_listener_base}
  const BlocSideEffectListenerBase({
    required this.listener,
    this.bloc,
    this.child,
    Key? key,
  }) : super(key: key, child: child);

  /// The widget which will be rendered as a descendant of the
  /// [BlocSideEffectListenerBase].
  final Widget? child;

  /// The [bloc] whose `side effect` will be listened to.
  /// Whenever the [bloc]'s `side effect` emits, [listener] will be invoked.
  final B? bloc;

  /// The [BlocWidgetListener] which will be called on every `side effect` emit.
  /// This [listener] should be used for any code which needs to execute
  /// in response to a `side effect` emit.
  final BlocWidgetSideEffectListener<SE> listener;

  @override
  SingleChildState<BlocSideEffectListenerBase<B, S, SE>> createState() =>
      _BlocSideEffectListenerBaseState<B, S, SE>();
}

class _BlocSideEffectListenerBaseState<B extends SideEffectProvider<SE, S>, S,
    SE> extends SingleChildState<BlocSideEffectListenerBase<B, S, SE>> {
  StreamSubscription<SE>? _subscription;
  late B _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = widget.bloc ?? context.read<B>();
    _subscribe();
  }

  @override
  void didUpdateWidget(BlocSideEffectListenerBase<B, S, SE> oldWidget) {
    super.didUpdateWidget(oldWidget);
    final oldBloc = oldWidget.bloc ?? context.read<B>();
    final currentBloc = widget.bloc ?? oldBloc;
    if (oldBloc != currentBloc) {
      if (_subscription != null) {
        _unsubscribe();
        _bloc = currentBloc;
      }
      _subscribe();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final bloc = widget.bloc ?? context.read<B>();
    if (_bloc != bloc) {
      if (_subscription != null) {
        _unsubscribe();
        _bloc = bloc;
      }
      _subscribe();
    }
  }

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    assert(
      child != null,
      '''${widget.runtimeType} used outside of MultiBlocListener must specify a child''',
    );
    if (widget.bloc == null) {
      // Trigger a rebuild if the bloc reference has changed.
      // See https://github.com/felangel/bloc/issues/2127.
      context.select<B, bool>((bloc) => identical(_bloc, bloc));
    }
    return child!;
  }

  @override
  void dispose() {
    _unsubscribe();
    super.dispose();
  }

  void _subscribe() {
    _subscription = _bloc.sideEffects
        .listen((sideEffect) => widget.listener(context, sideEffect));
  }

  void _unsubscribe() {
    _subscription?.cancel();
    _subscription = null;
  }
}

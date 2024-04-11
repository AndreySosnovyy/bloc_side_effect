library flutter_bloc_side_effect;

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as fb;

/// {@template bloc_listener}
/// Reworked version of [fb.BlocListener] which gets bloc not from context but
/// by provided parameter
/// {@endtemplate}
class BlocListener<Bloc extends fb.StateStreamable<State>, State>
    extends StatelessWidget {
  /// {@macro bloc_listener}
  const BlocListener({
    required this.listener,
    required this.bloc,
    this.child,
    this.listenWhen,
    Key? key,
  }) : super(key: key);

  /// {@template bloc_listener.listener}
  /// Same as the 'listener' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  /// {@endtemplate}
  final fb.BlocWidgetListener<State> listener;

  /// {@template bloc_listener.bloc}
  /// {@macro flutter_bloc_side_effect_listener_base.bloc}
  /// Same as the 'bloc' property for BlocListener from flutter_bloc package.
  ///
  /// See the documentation there if you need.
  /// {@endtemplate}
  final Bloc bloc;

  /// {@template bloc_listener.listenWhen}
  /// Same as the 'listenWhen' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  /// {@endtemplate}
  final fb.BlocListenerCondition<State>? listenWhen;

  /// {@template bloc_listener.child}
  /// Same as the 'child' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  /// {@endtemplate}
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return fb.BlocListener<Bloc, State>(
      listener: listener,
      listenWhen: listenWhen,
      bloc: bloc,
      child: child,
    );
  }
}

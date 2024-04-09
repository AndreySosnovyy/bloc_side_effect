import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as fb;

/// {@template bloc_consumer}
/// Reworked version of [fb.BlocConsumer] which gets bloc not from context but
/// by provided parameter
/// {@endtemplate}
class BlocConsumer<Bloc extends fb.StateStreamable<State>, State>
    extends StatelessWidget {
  /// {@macro bloc_consumer}
  const BlocConsumer({
    required this.builder,
    required this.listener,
    required this.bloc,
    this.buildWhen,
    this.listenWhen,
    Key? key,
  }) : super(key: key);

  /// {@template bloc_consumer.builder}
  /// Same as the 'builder' property for BlocListener from flutter_bloc package.
  ///
  /// See the documentation there if you need.
  /// {@endtemplate}
  final fb.BlocWidgetBuilder<State> builder;

  /// {@template bloc_consumer.listener}
  /// Same as the 'listener' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  /// {@endtemplate}
  final fb.BlocWidgetListener<State> listener;

  /// {@template bloc_consumer.buildWhen}
  /// Same as the 'buildWhen' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  /// {@endtemplate}
  final fb.BlocBuilderCondition<State>? buildWhen;

  /// {@template bloc_consumer.listenWhen}
  /// Same as the 'listenWhen' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  /// {@endtemplate}
  final fb.BlocListenerCondition<State>? listenWhen;

  /// {@template bloc_consumer.bloc}
  /// {@macro flutter_bloc_side_effect_listener_base.bloc}
  /// Same as the 'bloc' property for BlocListener from flutter_bloc package.
  ///
  /// See the documentation there if you need.
  /// {@endtemplate}
  final Bloc bloc;

  @override
  Widget build(BuildContext context) {
    return fb.BlocConsumer<Bloc, State>(
      builder: builder,
      listener: listener,
      bloc: bloc,
      buildWhen: buildWhen,
      listenWhen: listenWhen,
    );
  }
}

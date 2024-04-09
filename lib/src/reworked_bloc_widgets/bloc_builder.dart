import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart' as fb;

/// {@template bloc_builder}
/// Reworked version of [fb.BlocBuilder] which gets bloc not from context but
/// by provided parameter
/// {@endtemplate}
class BlocBuilder<Bloc extends fb.StateStreamable<State>, State>
    extends StatelessWidget {
  /// {@macro bloc_builder}
  const BlocBuilder({
    required this.builder,
    required this.bloc,
    this.buildWhen,
    Key? key,
  }) : super(key: key);

  /// {@template bloc_builder.builder}
  /// Same as the 'builder' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  /// {@endtemplate}
  final fb.BlocWidgetBuilder<State> builder;

  /// {@template bloc_builder.buildWhen}
  /// Same as the 'buildWhen' property for BlocListener from flutter_bloc
  /// package.
  ///
  /// See the documentation there if you need.
  /// {@endtemplate}
  final fb.BlocBuilderCondition<State>? buildWhen;

  /// {@template bloc_builder.bloc}
  /// {@macro flutter_bloc_side_effect_listener_base.bloc}
  /// Same as the 'bloc' property for BlocListener from flutter_bloc package.
  ///
  /// See the documentation there if you need.
  /// {@endtemplate}
  final Bloc bloc;

  @override
  Widget build(BuildContext context) {
    return fb.BlocBuilder<Bloc, State>(
      buildWhen: buildWhen,
      bloc: bloc,
      builder: builder,
    );
  }
}

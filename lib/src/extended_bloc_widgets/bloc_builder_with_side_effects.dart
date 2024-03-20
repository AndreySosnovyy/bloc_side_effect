// import 'package:bloc_side_effect/src/bloc_side_effect_listener.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// /// Extended version of [BlocBuilder] which also allows to listen to mixed side
// /// effects
// class BlocBuilderWithSideEffects<B extends StateStreamable<S>, S, SE>
//     extends BlocBuilder<B, S> {
//   /// {@macro bloc_builder_with_side_effects}
//   const BlocBuilderWithSideEffects({
//     required BlocWidgetBuilder<S> builder,
//     required this.sideEffectsListener,
//     BlocBuilderCondition<S>? buildWhen,
//     B? bloc,
//     Key? key,
//   }) : super(
//           key: key,
//           bloc: bloc,
//           buildWhen: buildWhen,
//           builder: builder,
//         );
//
//   /// {@macro bloc_widget_side_effect_listener}
//   final BlocWidgetSideEffectListener<SE> sideEffectsListener;
//
//   @override
//   Widget build(BuildContext context, S state) {
//     return BlocSideEffectListener<B, SE>(
//       listener: sideEffectsListener,
//       child: this,
//     );
//   }
// }

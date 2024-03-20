// import 'package:bloc_side_effect/side_effect_bloc.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// /// Extended version of [BlocConsumer] which also allows to listen to mixed side
// /// effects
// class BlocConsumerWithSideEffects<B extends SideEffectProvider<SE, S>, S, SE>
//     extends BlocConsumer<B, S> {
//   /// {@macro bloc_builder_with_side_effects}
//   const BlocConsumerWithSideEffects({
//     required BlocWidgetBuilder<S> builder,
//     required BlocWidgetListener<S> listener,
//     required this.sideEffectsListener,
//     BlocBuilderCondition<S>? buildWhen,
//     BlocListenerCondition<S>? listenWhen,
//     B? bloc,
//     Key? key,
//   }) : super(
//           key: key,
//           bloc: bloc,
//           builder: builder,
//           listener: listener,
//           buildWhen: buildWhen,
//           listenWhen: listenWhen,
//         );
//
//   /// {@macro bloc_widget_side_effect_listener}
//   final BlocWidgetSideEffectListener<SE> sideEffectsListener;
//
//   @override
//   State<BlocConsumer<B, S>> createState() {
//     return ;
//   }
// }
//

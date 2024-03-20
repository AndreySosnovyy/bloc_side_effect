// import 'package:bloc_side_effect/side_effect_bloc.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// /// Extended version of [BlocListener] which also allows to listen to mixed side
// /// effects
// class BlocConsumerWithSideEffects<B extends SideEffectProvider<SE, S>, S, SE>
//     extends BlocListener<B, S> {
//   /// {@macro bloc_builder_with_side_effects}
//   const BlocConsumerWithSideEffects({
//     required BlocWidgetListener<S> listener,
//     required this.sideEffectsListener,
//     BlocListenerCondition<S>? listenWhen,
//     B? bloc,
//     Key? key,
//   }) : super(
//     key: key,
//     bloc: bloc,
//     listener: listener,
//     listenWhen: listenWhen,
//   );
//
//   /// {@macro bloc_widget_side_effect_listener}
//   final BlocWidgetSideEffectListener<SE> sideEffectsListener;
// }
//

library flutter_bloc_side_effect;

import 'package:bloc/bloc.dart';

/// An object that provides access to a stream of side effects over time.
abstract class SideEffectProvider<SideEffect, State>
    extends StateStreamable<State> {
  /// The current [sideEffects] of side effects.
  Stream<SideEffect> get sideEffects;
}

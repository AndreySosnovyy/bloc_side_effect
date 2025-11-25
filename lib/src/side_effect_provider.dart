library flutter_bloc_side_effect;

import 'package:flutter_bloc/flutter_bloc.dart';

/// An object that provides access to a stream of side effects over time.
abstract class SideEffectProvider<SideEffect, State>
    extends StateStreamable<State> {
  /// The stream of side effects.
  Stream<SideEffect> get sideEffects;
}

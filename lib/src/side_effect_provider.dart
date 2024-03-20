library bloc_side_effect;

import 'package:bloc/bloc.dart';

/// An object that provides access to a stream of side effects over time.
abstract class SideEffectProvider<SE, S> extends StateStreamable<S>{
  /// The current [sideEffects] of side effects.
  Stream<SE> get sideEffects;
}

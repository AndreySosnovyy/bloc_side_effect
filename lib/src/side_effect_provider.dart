library bloc_side_effect;

/// An object that provides access to a stream of side effects over time.
abstract class SideEffectProvider<SE> {
  /// The current [sideEffects] of side effects.
  Stream<SE> get sideEffects;
}

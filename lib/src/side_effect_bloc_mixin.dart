library bloc_side_effect;

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_side_effect/src/side_effect_provider.dart';
import 'package:flutter/widgets.dart';

/// {@template bloc_side_effect_mixin}
/// Mixin to enrich the existing bloc  with `Stream` of `Side effects`
/// {@endtemplate}
mixin BlocSideEffectMixin<E, S, SE> on Bloc<E, S>
    implements SideEffectProvider<SE> {
  final StreamController<SE> _sideEffectController =
      StreamController.broadcast();

  /// Emits a new [sideEffect].
  void emitSideEffect(SE sideEffect) {
    try {
      if (_sideEffectController.isClosed) {
        throw StateError('Cannot emit new states after calling close');
      }
      _sideEffectController.add(sideEffect);
    } catch (error, stackTrace) {
      onError(error, stackTrace);
      rethrow;
    }
  }

  @override
  Stream<SE> get sideEffects => _sideEffectController.stream;

  @mustCallSuper
  @override
  Future<void> close() async {
    await _sideEffectController.close();
    await super.close();
  }

  @override
  bool get isClosed => super.isClosed && _sideEffectController.isClosed;
}

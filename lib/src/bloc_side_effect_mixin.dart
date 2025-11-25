library flutter_bloc_side_effect;

import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_side_effect/src/side_effect_provider.dart';

/// {@template flutter_bloc_side_effect_mixin}
/// Mixin to enrich the existing bloc with `Stream` of `Side effects`
/// {@endtemplate}
mixin BlocSideEffectMixin<Event, S, SE> on Bloc<Event, S>
    implements SideEffectProvider<S, SE> {
  final StreamController<SE> _sideEffectController =
      StreamController.broadcast();

  /// Emits a new [sideEffect].
  void emitSideEffect(SE sideEffect) {
    try {
      if (_sideEffectController.isClosed) {
        throw StateError('Cannot emit new side effects after calling close');
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

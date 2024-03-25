// ignore_for_file: depend_on_referenced_packages
import 'package:flutter_bloc_side_effect/side_effect_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_bloc.freezed.dart';

@freezed
class MyEvent with _$MyEvent {
  const MyEvent._();

  const factory MyEvent.throwError() = _ThrowErrorMyEvent;
}

@freezed
class MyState with _$MyState {
  const MyState._();

  const factory MyState.loading() = _LoadingMyState;

  const factory MyState.idle() = _IdleMyState;

  const factory MyState.error({required String message}) = _ErrorMyState;

  String? get errorMessage => mapOrNull(
        error: (state) => state.message,
      );

  String get stateName => map(
        loading: (_) => 'Loading state',
        idle: (_) => 'Idle state',
        error: (_) => 'Error state',
      );
}

@freezed
class MySideEffect with _$MySideEffect {
  const MySideEffect._();

  const factory MySideEffect.error({required String message}) =
      _ErrorMySideEffect;
}

class MyBloc extends Bloc<MyEvent, MyState>
    with BlocSideEffectMixin<MyEvent, MyState, MySideEffect> {
  MyBloc() : super(const MyState.idle()) {
    on<MyEvent>(
      (event, emitter) => event.map(
        throwError: (event) => _throwError(event, emitter),
      ),
    );
  }

  Future<void> _throwError(
    _ThrowErrorMyEvent event,
    Emitter<MyState> emitter,
  ) async {
    emitter(const MyState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emitter(const MyState.error(message: 'Error message'));
    emitSideEffect(const MySideEffect.error(message: 'Error message'));
  }
}

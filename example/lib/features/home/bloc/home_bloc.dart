// ignore_for_file: depend_on_referenced_packages
import 'package:bloc_side_effect/side_effect_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';
part 'home_bloc_side_effect.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState>
    with BlocSideEffectMixin<HomeEvent, HomeState, HomeSideEffect> {
  HomeBloc() : super(const HomeState.initial()) {
    on<HomeEvent>(
      (event, emitter) => event.map(
        initialize: (event) => _initialize(event, emitter),
        throwError: (event) => _throwError(event, emitter),
      ),
    );
  }

  Future<void> _initialize(
    _InitializeHomeEvent event,
    Emitter<HomeState> emitter,
  ) async {
    emitter(const HomeState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emitter(const HomeState.idle());
  }

  Future<void> _throwError(
    _ThrowErrorHomeEvent event,
    Emitter<HomeState> emitter,
  ) async {
    emitter(const HomeState.loading());
    await Future.delayed(const Duration(seconds: 2));
    emitter(const HomeState.error(message: 'Error message'));
    emitSideEffect(const HomeSideEffect.error(message: 'Error message'));
  }
}

part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();

  const factory HomeState.initial() = _InitialHomeState;

  const factory HomeState.loading() = _LoadingHomeState;

  const factory HomeState.idle() = _IdleHomeState;

  const factory HomeState.error({
    required String message,
  }) = _ErrorHomeState;

  bool get isInitial => maybeMap(
        initial: (_) => true,
        orElse: () => false,
      );

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  bool get isIdle => maybeMap(
        idle: (_) => true,
        orElse: () => false,
      );

  bool get isError => maybeMap(
        error: (_) => true,
        orElse: () => false,
      );

  String? get errorMessage => mapOrNull(
        error: (state) => state.message,
      );

  String get stateName => map(
        initial: (_) => 'Initial state',
        loading: (_) => 'Loading state',
        idle: (_) => 'Idle state',
        error: (_) => 'Error state',
      );
}

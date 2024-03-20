part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const HomeEvent._();

  const factory HomeEvent.initialize() = _InitializeHomeEvent;

  const factory HomeEvent.throwError() = _ThrowErrorHomeEvent;
}

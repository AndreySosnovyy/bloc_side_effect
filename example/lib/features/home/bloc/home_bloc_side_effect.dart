part of 'home_bloc.dart';

@freezed
class HomeSideEffect with _$HomeSideEffect {
  const HomeSideEffect._();

  const factory HomeSideEffect.error({
    required String message,
  }) = _ErrorHomeSideEffect;
}

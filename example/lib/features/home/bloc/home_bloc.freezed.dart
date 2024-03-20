// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeSideEffect {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorHomeSideEffect value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorHomeSideEffect value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorHomeSideEffect value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeSideEffectCopyWith<HomeSideEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeSideEffectCopyWith<$Res> {
  factory $HomeSideEffectCopyWith(
          HomeSideEffect value, $Res Function(HomeSideEffect) then) =
      _$HomeSideEffectCopyWithImpl<$Res, HomeSideEffect>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$HomeSideEffectCopyWithImpl<$Res, $Val extends HomeSideEffect>
    implements $HomeSideEffectCopyWith<$Res> {
  _$HomeSideEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorHomeSideEffectImplCopyWith<$Res>
    implements $HomeSideEffectCopyWith<$Res> {
  factory _$$ErrorHomeSideEffectImplCopyWith(_$ErrorHomeSideEffectImpl value,
          $Res Function(_$ErrorHomeSideEffectImpl) then) =
      __$$ErrorHomeSideEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorHomeSideEffectImplCopyWithImpl<$Res>
    extends _$HomeSideEffectCopyWithImpl<$Res, _$ErrorHomeSideEffectImpl>
    implements _$$ErrorHomeSideEffectImplCopyWith<$Res> {
  __$$ErrorHomeSideEffectImplCopyWithImpl(_$ErrorHomeSideEffectImpl _value,
      $Res Function(_$ErrorHomeSideEffectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorHomeSideEffectImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorHomeSideEffectImpl extends _ErrorHomeSideEffect {
  const _$ErrorHomeSideEffectImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'HomeSideEffect.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorHomeSideEffectImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorHomeSideEffectImplCopyWith<_$ErrorHomeSideEffectImpl> get copyWith =>
      __$$ErrorHomeSideEffectImplCopyWithImpl<_$ErrorHomeSideEffectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorHomeSideEffect value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorHomeSideEffect value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorHomeSideEffect value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorHomeSideEffect extends HomeSideEffect {
  const factory _ErrorHomeSideEffect({required final String message}) =
      _$ErrorHomeSideEffectImpl;
  const _ErrorHomeSideEffect._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorHomeSideEffectImplCopyWith<_$ErrorHomeSideEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() throwError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? throwError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? throwError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeHomeEvent value) initialize,
    required TResult Function(_ThrowErrorHomeEvent value) throwError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeHomeEvent value)? initialize,
    TResult? Function(_ThrowErrorHomeEvent value)? throwError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeHomeEvent value)? initialize,
    TResult Function(_ThrowErrorHomeEvent value)? throwError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeHomeEventImplCopyWith<$Res> {
  factory _$$InitializeHomeEventImplCopyWith(_$InitializeHomeEventImpl value,
          $Res Function(_$InitializeHomeEventImpl) then) =
      __$$InitializeHomeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeHomeEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$InitializeHomeEventImpl>
    implements _$$InitializeHomeEventImplCopyWith<$Res> {
  __$$InitializeHomeEventImplCopyWithImpl(_$InitializeHomeEventImpl _value,
      $Res Function(_$InitializeHomeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeHomeEventImpl extends _InitializeHomeEvent {
  const _$InitializeHomeEventImpl() : super._();

  @override
  String toString() {
    return 'HomeEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeHomeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() throwError,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? throwError,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? throwError,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeHomeEvent value) initialize,
    required TResult Function(_ThrowErrorHomeEvent value) throwError,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeHomeEvent value)? initialize,
    TResult? Function(_ThrowErrorHomeEvent value)? throwError,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeHomeEvent value)? initialize,
    TResult Function(_ThrowErrorHomeEvent value)? throwError,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _InitializeHomeEvent extends HomeEvent {
  const factory _InitializeHomeEvent() = _$InitializeHomeEventImpl;
  const _InitializeHomeEvent._() : super._();
}

/// @nodoc
abstract class _$$ThrowErrorHomeEventImplCopyWith<$Res> {
  factory _$$ThrowErrorHomeEventImplCopyWith(_$ThrowErrorHomeEventImpl value,
          $Res Function(_$ThrowErrorHomeEventImpl) then) =
      __$$ThrowErrorHomeEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThrowErrorHomeEventImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$ThrowErrorHomeEventImpl>
    implements _$$ThrowErrorHomeEventImplCopyWith<$Res> {
  __$$ThrowErrorHomeEventImplCopyWithImpl(_$ThrowErrorHomeEventImpl _value,
      $Res Function(_$ThrowErrorHomeEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThrowErrorHomeEventImpl extends _ThrowErrorHomeEvent {
  const _$ThrowErrorHomeEventImpl() : super._();

  @override
  String toString() {
    return 'HomeEvent.throwError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThrowErrorHomeEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() throwError,
  }) {
    return throwError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? throwError,
  }) {
    return throwError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? throwError,
    required TResult orElse(),
  }) {
    if (throwError != null) {
      return throwError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeHomeEvent value) initialize,
    required TResult Function(_ThrowErrorHomeEvent value) throwError,
  }) {
    return throwError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeHomeEvent value)? initialize,
    TResult? Function(_ThrowErrorHomeEvent value)? throwError,
  }) {
    return throwError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeHomeEvent value)? initialize,
    TResult Function(_ThrowErrorHomeEvent value)? throwError,
    required TResult orElse(),
  }) {
    if (throwError != null) {
      return throwError(this);
    }
    return orElse();
  }
}

abstract class _ThrowErrorHomeEvent extends HomeEvent {
  const factory _ThrowErrorHomeEvent() = _$ThrowErrorHomeEventImpl;
  const _ThrowErrorHomeEvent._() : super._();
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_IdleHomeState value) idle,
    required TResult Function(_ErrorHomeState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_LoadingHomeState value)? loading,
    TResult? Function(_IdleHomeState value)? idle,
    TResult? Function(_ErrorHomeState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_IdleHomeState value)? idle,
    TResult Function(_ErrorHomeState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialHomeStateImplCopyWith<$Res> {
  factory _$$InitialHomeStateImplCopyWith(_$InitialHomeStateImpl value,
          $Res Function(_$InitialHomeStateImpl) then) =
      __$$InitialHomeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$InitialHomeStateImpl>
    implements _$$InitialHomeStateImplCopyWith<$Res> {
  __$$InitialHomeStateImplCopyWithImpl(_$InitialHomeStateImpl _value,
      $Res Function(_$InitialHomeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialHomeStateImpl extends _InitialHomeState {
  const _$InitialHomeStateImpl() : super._();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialHomeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_IdleHomeState value) idle,
    required TResult Function(_ErrorHomeState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_LoadingHomeState value)? loading,
    TResult? Function(_IdleHomeState value)? idle,
    TResult? Function(_ErrorHomeState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_IdleHomeState value)? idle,
    TResult Function(_ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialHomeState extends HomeState {
  const factory _InitialHomeState() = _$InitialHomeStateImpl;
  const _InitialHomeState._() : super._();
}

/// @nodoc
abstract class _$$LoadingHomeStateImplCopyWith<$Res> {
  factory _$$LoadingHomeStateImplCopyWith(_$LoadingHomeStateImpl value,
          $Res Function(_$LoadingHomeStateImpl) then) =
      __$$LoadingHomeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$LoadingHomeStateImpl>
    implements _$$LoadingHomeStateImplCopyWith<$Res> {
  __$$LoadingHomeStateImplCopyWithImpl(_$LoadingHomeStateImpl _value,
      $Res Function(_$LoadingHomeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingHomeStateImpl extends _LoadingHomeState {
  const _$LoadingHomeStateImpl() : super._();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingHomeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_IdleHomeState value) idle,
    required TResult Function(_ErrorHomeState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_LoadingHomeState value)? loading,
    TResult? Function(_IdleHomeState value)? idle,
    TResult? Function(_ErrorHomeState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_IdleHomeState value)? idle,
    TResult Function(_ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingHomeState extends HomeState {
  const factory _LoadingHomeState() = _$LoadingHomeStateImpl;
  const _LoadingHomeState._() : super._();
}

/// @nodoc
abstract class _$$IdleHomeStateImplCopyWith<$Res> {
  factory _$$IdleHomeStateImplCopyWith(
          _$IdleHomeStateImpl value, $Res Function(_$IdleHomeStateImpl) then) =
      __$$IdleHomeStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$IdleHomeStateImpl>
    implements _$$IdleHomeStateImplCopyWith<$Res> {
  __$$IdleHomeStateImplCopyWithImpl(
      _$IdleHomeStateImpl _value, $Res Function(_$IdleHomeStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleHomeStateImpl extends _IdleHomeState {
  const _$IdleHomeStateImpl() : super._();

  @override
  String toString() {
    return 'HomeState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleHomeStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_IdleHomeState value) idle,
    required TResult Function(_ErrorHomeState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_LoadingHomeState value)? loading,
    TResult? Function(_IdleHomeState value)? idle,
    TResult? Function(_ErrorHomeState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_IdleHomeState value)? idle,
    TResult Function(_ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleHomeState extends HomeState {
  const factory _IdleHomeState() = _$IdleHomeStateImpl;
  const _IdleHomeState._() : super._();
}

/// @nodoc
abstract class _$$ErrorHomeStateImplCopyWith<$Res> {
  factory _$$ErrorHomeStateImplCopyWith(_$ErrorHomeStateImpl value,
          $Res Function(_$ErrorHomeStateImpl) then) =
      __$$ErrorHomeStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorHomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$ErrorHomeStateImpl>
    implements _$$ErrorHomeStateImplCopyWith<$Res> {
  __$$ErrorHomeStateImplCopyWithImpl(
      _$ErrorHomeStateImpl _value, $Res Function(_$ErrorHomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorHomeStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorHomeStateImpl extends _ErrorHomeState {
  const _$ErrorHomeStateImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorHomeStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorHomeStateImplCopyWith<_$ErrorHomeStateImpl> get copyWith =>
      __$$ErrorHomeStateImplCopyWithImpl<_$ErrorHomeStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialHomeState value) initial,
    required TResult Function(_LoadingHomeState value) loading,
    required TResult Function(_IdleHomeState value) idle,
    required TResult Function(_ErrorHomeState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialHomeState value)? initial,
    TResult? Function(_LoadingHomeState value)? loading,
    TResult? Function(_IdleHomeState value)? idle,
    TResult? Function(_ErrorHomeState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialHomeState value)? initial,
    TResult Function(_LoadingHomeState value)? loading,
    TResult Function(_IdleHomeState value)? idle,
    TResult Function(_ErrorHomeState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorHomeState extends HomeState {
  const factory _ErrorHomeState({required final String message}) =
      _$ErrorHomeStateImpl;
  const _ErrorHomeState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorHomeStateImplCopyWith<_$ErrorHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

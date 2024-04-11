// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'my_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() throwError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? throwError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? throwError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThrowErrorMyEvent value) throwError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThrowErrorMyEvent value)? throwError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThrowErrorMyEvent value)? throwError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyEventCopyWith<$Res> {
  factory $MyEventCopyWith(MyEvent value, $Res Function(MyEvent) then) =
      _$MyEventCopyWithImpl<$Res, MyEvent>;
}

/// @nodoc
class _$MyEventCopyWithImpl<$Res, $Val extends MyEvent>
    implements $MyEventCopyWith<$Res> {
  _$MyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ThrowErrorMyEventImplCopyWith<$Res> {
  factory _$$ThrowErrorMyEventImplCopyWith(_$ThrowErrorMyEventImpl value,
          $Res Function(_$ThrowErrorMyEventImpl) then) =
      __$$ThrowErrorMyEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ThrowErrorMyEventImplCopyWithImpl<$Res>
    extends _$MyEventCopyWithImpl<$Res, _$ThrowErrorMyEventImpl>
    implements _$$ThrowErrorMyEventImplCopyWith<$Res> {
  __$$ThrowErrorMyEventImplCopyWithImpl(_$ThrowErrorMyEventImpl _value,
      $Res Function(_$ThrowErrorMyEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ThrowErrorMyEventImpl extends _ThrowErrorMyEvent {
  const _$ThrowErrorMyEventImpl() : super._();

  @override
  String toString() {
    return 'MyEvent.throwError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ThrowErrorMyEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() throwError,
  }) {
    return throwError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? throwError,
  }) {
    return throwError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_ThrowErrorMyEvent value) throwError,
  }) {
    return throwError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThrowErrorMyEvent value)? throwError,
  }) {
    return throwError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThrowErrorMyEvent value)? throwError,
    required TResult orElse(),
  }) {
    if (throwError != null) {
      return throwError(this);
    }
    return orElse();
  }
}

abstract class _ThrowErrorMyEvent extends MyEvent {
  const factory _ThrowErrorMyEvent() = _$ThrowErrorMyEventImpl;
  const _ThrowErrorMyEvent._() : super._();
}

/// @nodoc
mixin _$MyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingMyState value) loading,
    required TResult Function(_IdleMyState value) idle,
    required TResult Function(_ErrorMyState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingMyState value)? loading,
    TResult? Function(_IdleMyState value)? idle,
    TResult? Function(_ErrorMyState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingMyState value)? loading,
    TResult Function(_IdleMyState value)? idle,
    TResult Function(_ErrorMyState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStateCopyWith<$Res> {
  factory $MyStateCopyWith(MyState value, $Res Function(MyState) then) =
      _$MyStateCopyWithImpl<$Res, MyState>;
}

/// @nodoc
class _$MyStateCopyWithImpl<$Res, $Val extends MyState>
    implements $MyStateCopyWith<$Res> {
  _$MyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingMyStateImplCopyWith<$Res> {
  factory _$$LoadingMyStateImplCopyWith(_$LoadingMyStateImpl value,
          $Res Function(_$LoadingMyStateImpl) then) =
      __$$LoadingMyStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingMyStateImplCopyWithImpl<$Res>
    extends _$MyStateCopyWithImpl<$Res, _$LoadingMyStateImpl>
    implements _$$LoadingMyStateImplCopyWith<$Res> {
  __$$LoadingMyStateImplCopyWithImpl(
      _$LoadingMyStateImpl _value, $Res Function(_$LoadingMyStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingMyStateImpl extends _LoadingMyState {
  const _$LoadingMyStateImpl() : super._();

  @override
  String toString() {
    return 'MyState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingMyStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_LoadingMyState value) loading,
    required TResult Function(_IdleMyState value) idle,
    required TResult Function(_ErrorMyState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingMyState value)? loading,
    TResult? Function(_IdleMyState value)? idle,
    TResult? Function(_ErrorMyState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingMyState value)? loading,
    TResult Function(_IdleMyState value)? idle,
    TResult Function(_ErrorMyState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingMyState extends MyState {
  const factory _LoadingMyState() = _$LoadingMyStateImpl;
  const _LoadingMyState._() : super._();
}

/// @nodoc
abstract class _$$IdleMyStateImplCopyWith<$Res> {
  factory _$$IdleMyStateImplCopyWith(
          _$IdleMyStateImpl value, $Res Function(_$IdleMyStateImpl) then) =
      __$$IdleMyStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleMyStateImplCopyWithImpl<$Res>
    extends _$MyStateCopyWithImpl<$Res, _$IdleMyStateImpl>
    implements _$$IdleMyStateImplCopyWith<$Res> {
  __$$IdleMyStateImplCopyWithImpl(
      _$IdleMyStateImpl _value, $Res Function(_$IdleMyStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleMyStateImpl extends _IdleMyState {
  const _$IdleMyStateImpl() : super._();

  @override
  String toString() {
    return 'MyState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleMyStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_LoadingMyState value) loading,
    required TResult Function(_IdleMyState value) idle,
    required TResult Function(_ErrorMyState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingMyState value)? loading,
    TResult? Function(_IdleMyState value)? idle,
    TResult? Function(_ErrorMyState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingMyState value)? loading,
    TResult Function(_IdleMyState value)? idle,
    TResult Function(_ErrorMyState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleMyState extends MyState {
  const factory _IdleMyState() = _$IdleMyStateImpl;
  const _IdleMyState._() : super._();
}

/// @nodoc
abstract class _$$ErrorMyStateImplCopyWith<$Res> {
  factory _$$ErrorMyStateImplCopyWith(
          _$ErrorMyStateImpl value, $Res Function(_$ErrorMyStateImpl) then) =
      __$$ErrorMyStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorMyStateImplCopyWithImpl<$Res>
    extends _$MyStateCopyWithImpl<$Res, _$ErrorMyStateImpl>
    implements _$$ErrorMyStateImplCopyWith<$Res> {
  __$$ErrorMyStateImplCopyWithImpl(
      _$ErrorMyStateImpl _value, $Res Function(_$ErrorMyStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorMyStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorMyStateImpl extends _ErrorMyState {
  const _$ErrorMyStateImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'MyState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMyStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMyStateImplCopyWith<_$ErrorMyStateImpl> get copyWith =>
      __$$ErrorMyStateImplCopyWithImpl<_$ErrorMyStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
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
    required TResult Function(_LoadingMyState value) loading,
    required TResult Function(_IdleMyState value) idle,
    required TResult Function(_ErrorMyState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingMyState value)? loading,
    TResult? Function(_IdleMyState value)? idle,
    TResult? Function(_ErrorMyState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingMyState value)? loading,
    TResult Function(_IdleMyState value)? idle,
    TResult Function(_ErrorMyState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorMyState extends MyState {
  const factory _ErrorMyState({required final String message}) =
      _$ErrorMyStateImpl;
  const _ErrorMyState._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorMyStateImplCopyWith<_$ErrorMyStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MySideEffect {
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
    required TResult Function(_ErrorMySideEffect value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorMySideEffect value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorMySideEffect value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MySideEffectCopyWith<MySideEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MySideEffectCopyWith<$Res> {
  factory $MySideEffectCopyWith(
          MySideEffect value, $Res Function(MySideEffect) then) =
      _$MySideEffectCopyWithImpl<$Res, MySideEffect>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$MySideEffectCopyWithImpl<$Res, $Val extends MySideEffect>
    implements $MySideEffectCopyWith<$Res> {
  _$MySideEffectCopyWithImpl(this._value, this._then);

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
abstract class _$$ErrorMySideEffectImplCopyWith<$Res>
    implements $MySideEffectCopyWith<$Res> {
  factory _$$ErrorMySideEffectImplCopyWith(_$ErrorMySideEffectImpl value,
          $Res Function(_$ErrorMySideEffectImpl) then) =
      __$$ErrorMySideEffectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorMySideEffectImplCopyWithImpl<$Res>
    extends _$MySideEffectCopyWithImpl<$Res, _$ErrorMySideEffectImpl>
    implements _$$ErrorMySideEffectImplCopyWith<$Res> {
  __$$ErrorMySideEffectImplCopyWithImpl(_$ErrorMySideEffectImpl _value,
      $Res Function(_$ErrorMySideEffectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorMySideEffectImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorMySideEffectImpl extends _ErrorMySideEffect {
  const _$ErrorMySideEffectImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'MySideEffect.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMySideEffectImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMySideEffectImplCopyWith<_$ErrorMySideEffectImpl> get copyWith =>
      __$$ErrorMySideEffectImplCopyWithImpl<_$ErrorMySideEffectImpl>(
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
    required TResult Function(_ErrorMySideEffect value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorMySideEffect value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorMySideEffect value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorMySideEffect extends MySideEffect {
  const factory _ErrorMySideEffect({required final String message}) =
      _$ErrorMySideEffectImpl;
  const _ErrorMySideEffect._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ErrorMySideEffectImplCopyWith<_$ErrorMySideEffectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

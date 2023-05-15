// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_login_status_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserLoginStatusEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatusTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatusTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatusTriggered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckStatusTriggered value) checkStatusTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckStatusTriggered value)? checkStatusTriggered,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckStatusTriggered value)? checkStatusTriggered,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginStatusEventCopyWith<$Res> {
  factory $UserLoginStatusEventCopyWith(UserLoginStatusEvent value,
          $Res Function(UserLoginStatusEvent) then) =
      _$UserLoginStatusEventCopyWithImpl<$Res, UserLoginStatusEvent>;
}

/// @nodoc
class _$UserLoginStatusEventCopyWithImpl<$Res,
        $Val extends UserLoginStatusEvent>
    implements $UserLoginStatusEventCopyWith<$Res> {
  _$UserLoginStatusEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckStatusTriggeredCopyWith<$Res> {
  factory _$$_CheckStatusTriggeredCopyWith(_$_CheckStatusTriggered value,
          $Res Function(_$_CheckStatusTriggered) then) =
      __$$_CheckStatusTriggeredCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckStatusTriggeredCopyWithImpl<$Res>
    extends _$UserLoginStatusEventCopyWithImpl<$Res, _$_CheckStatusTriggered>
    implements _$$_CheckStatusTriggeredCopyWith<$Res> {
  __$$_CheckStatusTriggeredCopyWithImpl(_$_CheckStatusTriggered _value,
      $Res Function(_$_CheckStatusTriggered) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckStatusTriggered implements _CheckStatusTriggered {
  _$_CheckStatusTriggered();

  @override
  String toString() {
    return 'UserLoginStatusEvent.checkStatusTriggered()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckStatusTriggered);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkStatusTriggered,
  }) {
    return checkStatusTriggered();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkStatusTriggered,
  }) {
    return checkStatusTriggered?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkStatusTriggered,
    required TResult orElse(),
  }) {
    if (checkStatusTriggered != null) {
      return checkStatusTriggered();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckStatusTriggered value) checkStatusTriggered,
  }) {
    return checkStatusTriggered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckStatusTriggered value)? checkStatusTriggered,
  }) {
    return checkStatusTriggered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckStatusTriggered value)? checkStatusTriggered,
    required TResult orElse(),
  }) {
    if (checkStatusTriggered != null) {
      return checkStatusTriggered(this);
    }
    return orElse();
  }
}

abstract class _CheckStatusTriggered implements UserLoginStatusEvent {
  factory _CheckStatusTriggered() = _$_CheckStatusTriggered;
}

/// @nodoc
mixin _$UserLoginStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingStatus,
    required TResult Function(bool isUserLoggedIn) statusFetched,
    required TResult Function(AppFailure failure) fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingStatus,
    TResult? Function(bool isUserLoggedIn)? statusFetched,
    TResult? Function(AppFailure failure)? fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingStatus,
    TResult Function(bool isUserLoggedIn)? statusFetched,
    TResult Function(AppFailure failure)? fetchFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FechingStatus value) fetchingStatus,
    required TResult Function(_StatusFetched value) statusFetched,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FechingStatus value)? fetchingStatus,
    TResult? Function(_StatusFetched value)? statusFetched,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FechingStatus value)? fetchingStatus,
    TResult Function(_StatusFetched value)? statusFetched,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLoginStatusStateCopyWith<$Res> {
  factory $UserLoginStatusStateCopyWith(UserLoginStatusState value,
          $Res Function(UserLoginStatusState) then) =
      _$UserLoginStatusStateCopyWithImpl<$Res, UserLoginStatusState>;
}

/// @nodoc
class _$UserLoginStatusStateCopyWithImpl<$Res,
        $Val extends UserLoginStatusState>
    implements $UserLoginStatusStateCopyWith<$Res> {
  _$UserLoginStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$UserLoginStatusStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  _$_Initial();

  @override
  String toString() {
    return 'UserLoginStatusState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingStatus,
    required TResult Function(bool isUserLoggedIn) statusFetched,
    required TResult Function(AppFailure failure) fetchFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingStatus,
    TResult? Function(bool isUserLoggedIn)? statusFetched,
    TResult? Function(AppFailure failure)? fetchFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingStatus,
    TResult Function(bool isUserLoggedIn)? statusFetched,
    TResult Function(AppFailure failure)? fetchFailed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_FechingStatus value) fetchingStatus,
    required TResult Function(_StatusFetched value) statusFetched,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FechingStatus value)? fetchingStatus,
    TResult? Function(_StatusFetched value)? statusFetched,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FechingStatus value)? fetchingStatus,
    TResult Function(_StatusFetched value)? statusFetched,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UserLoginStatusState {
  factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_FechingStatusCopyWith<$Res> {
  factory _$$_FechingStatusCopyWith(
          _$_FechingStatus value, $Res Function(_$_FechingStatus) then) =
      __$$_FechingStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FechingStatusCopyWithImpl<$Res>
    extends _$UserLoginStatusStateCopyWithImpl<$Res, _$_FechingStatus>
    implements _$$_FechingStatusCopyWith<$Res> {
  __$$_FechingStatusCopyWithImpl(
      _$_FechingStatus _value, $Res Function(_$_FechingStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FechingStatus implements _FechingStatus {
  _$_FechingStatus();

  @override
  String toString() {
    return 'UserLoginStatusState.fetchingStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FechingStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingStatus,
    required TResult Function(bool isUserLoggedIn) statusFetched,
    required TResult Function(AppFailure failure) fetchFailed,
  }) {
    return fetchingStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingStatus,
    TResult? Function(bool isUserLoggedIn)? statusFetched,
    TResult? Function(AppFailure failure)? fetchFailed,
  }) {
    return fetchingStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingStatus,
    TResult Function(bool isUserLoggedIn)? statusFetched,
    TResult Function(AppFailure failure)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchingStatus != null) {
      return fetchingStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FechingStatus value) fetchingStatus,
    required TResult Function(_StatusFetched value) statusFetched,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) {
    return fetchingStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FechingStatus value)? fetchingStatus,
    TResult? Function(_StatusFetched value)? statusFetched,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) {
    return fetchingStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FechingStatus value)? fetchingStatus,
    TResult Function(_StatusFetched value)? statusFetched,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchingStatus != null) {
      return fetchingStatus(this);
    }
    return orElse();
  }
}

abstract class _FechingStatus implements UserLoginStatusState {
  factory _FechingStatus() = _$_FechingStatus;
}

/// @nodoc
abstract class _$$_StatusFetchedCopyWith<$Res> {
  factory _$$_StatusFetchedCopyWith(
          _$_StatusFetched value, $Res Function(_$_StatusFetched) then) =
      __$$_StatusFetchedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isUserLoggedIn});
}

/// @nodoc
class __$$_StatusFetchedCopyWithImpl<$Res>
    extends _$UserLoginStatusStateCopyWithImpl<$Res, _$_StatusFetched>
    implements _$$_StatusFetchedCopyWith<$Res> {
  __$$_StatusFetchedCopyWithImpl(
      _$_StatusFetched _value, $Res Function(_$_StatusFetched) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isUserLoggedIn = null,
  }) {
    return _then(_$_StatusFetched(
      isUserLoggedIn: null == isUserLoggedIn
          ? _value.isUserLoggedIn
          : isUserLoggedIn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StatusFetched implements _StatusFetched {
  _$_StatusFetched({required this.isUserLoggedIn});

  @override
  final bool isUserLoggedIn;

  @override
  String toString() {
    return 'UserLoginStatusState.statusFetched(isUserLoggedIn: $isUserLoggedIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StatusFetched &&
            (identical(other.isUserLoggedIn, isUserLoggedIn) ||
                other.isUserLoggedIn == isUserLoggedIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isUserLoggedIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatusFetchedCopyWith<_$_StatusFetched> get copyWith =>
      __$$_StatusFetchedCopyWithImpl<_$_StatusFetched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingStatus,
    required TResult Function(bool isUserLoggedIn) statusFetched,
    required TResult Function(AppFailure failure) fetchFailed,
  }) {
    return statusFetched(isUserLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingStatus,
    TResult? Function(bool isUserLoggedIn)? statusFetched,
    TResult? Function(AppFailure failure)? fetchFailed,
  }) {
    return statusFetched?.call(isUserLoggedIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingStatus,
    TResult Function(bool isUserLoggedIn)? statusFetched,
    TResult Function(AppFailure failure)? fetchFailed,
    required TResult orElse(),
  }) {
    if (statusFetched != null) {
      return statusFetched(isUserLoggedIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FechingStatus value) fetchingStatus,
    required TResult Function(_StatusFetched value) statusFetched,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) {
    return statusFetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FechingStatus value)? fetchingStatus,
    TResult? Function(_StatusFetched value)? statusFetched,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) {
    return statusFetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FechingStatus value)? fetchingStatus,
    TResult Function(_StatusFetched value)? statusFetched,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) {
    if (statusFetched != null) {
      return statusFetched(this);
    }
    return orElse();
  }
}

abstract class _StatusFetched implements UserLoginStatusState {
  factory _StatusFetched({required final bool isUserLoggedIn}) =
      _$_StatusFetched;

  bool get isUserLoggedIn;
  @JsonKey(ignore: true)
  _$$_StatusFetchedCopyWith<_$_StatusFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FetchFailedCopyWith<$Res> {
  factory _$$_FetchFailedCopyWith(
          _$_FetchFailed value, $Res Function(_$_FetchFailed) then) =
      __$$_FetchFailedCopyWithImpl<$Res>;
  @useResult
  $Res call({AppFailure failure});

  $AppFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_FetchFailedCopyWithImpl<$Res>
    extends _$UserLoginStatusStateCopyWithImpl<$Res, _$_FetchFailed>
    implements _$$_FetchFailedCopyWith<$Res> {
  __$$_FetchFailedCopyWithImpl(
      _$_FetchFailed _value, $Res Function(_$_FetchFailed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_FetchFailed(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AppFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppFailureCopyWith<$Res> get failure {
    return $AppFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_FetchFailed implements _FetchFailed {
  _$_FetchFailed({required this.failure});

  @override
  final AppFailure failure;

  @override
  String toString() {
    return 'UserLoginStatusState.fetchFailed(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FetchFailed &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FetchFailedCopyWith<_$_FetchFailed> get copyWith =>
      __$$_FetchFailedCopyWithImpl<_$_FetchFailed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetchingStatus,
    required TResult Function(bool isUserLoggedIn) statusFetched,
    required TResult Function(AppFailure failure) fetchFailed,
  }) {
    return fetchFailed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetchingStatus,
    TResult? Function(bool isUserLoggedIn)? statusFetched,
    TResult? Function(AppFailure failure)? fetchFailed,
  }) {
    return fetchFailed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetchingStatus,
    TResult Function(bool isUserLoggedIn)? statusFetched,
    TResult Function(AppFailure failure)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchFailed != null) {
      return fetchFailed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FechingStatus value) fetchingStatus,
    required TResult Function(_StatusFetched value) statusFetched,
    required TResult Function(_FetchFailed value) fetchFailed,
  }) {
    return fetchFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FechingStatus value)? fetchingStatus,
    TResult? Function(_StatusFetched value)? statusFetched,
    TResult? Function(_FetchFailed value)? fetchFailed,
  }) {
    return fetchFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FechingStatus value)? fetchingStatus,
    TResult Function(_StatusFetched value)? statusFetched,
    TResult Function(_FetchFailed value)? fetchFailed,
    required TResult orElse(),
  }) {
    if (fetchFailed != null) {
      return fetchFailed(this);
    }
    return orElse();
  }
}

abstract class _FetchFailed implements UserLoginStatusState {
  factory _FetchFailed({required final AppFailure failure}) = _$_FetchFailed;

  AppFailure get failure;
  @JsonKey(ignore: true)
  _$$_FetchFailedCopyWith<_$_FetchFailed> get copyWith =>
      throw _privateConstructorUsedError;
}

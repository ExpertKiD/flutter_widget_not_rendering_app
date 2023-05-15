// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppException {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unAuthorized,
    required TResult Function(String message) unProcessableEntity,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) formatNotParsable,
    required TResult Function(String message) internalServerException,
    required TResult Function(String message) cacheException,
    required TResult Function(String message) unknownException,
    required TResult Function(String message) timeOutException,
    required TResult Function(String message) notFoundException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unAuthorized,
    TResult? Function(String message)? unProcessableEntity,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? formatNotParsable,
    TResult? Function(String message)? internalServerException,
    TResult? Function(String message)? cacheException,
    TResult? Function(String message)? unknownException,
    TResult? Function(String message)? timeOutException,
    TResult? Function(String message)? notFoundException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unAuthorized,
    TResult Function(String message)? unProcessableEntity,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? formatNotParsable,
    TResult Function(String message)? internalServerException,
    TResult Function(String message)? cacheException,
    TResult Function(String message)? unknownException,
    TResult Function(String message)? timeOutException,
    TResult Function(String message)? notFoundException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnection,
    required TResult Function(_BadRequestException value) badRequest,
    required TResult Function(_UnAuthorizedException value) unAuthorized,
    required TResult Function(_UnProcessableEntityException value)
        unProcessableEntity,
    required TResult Function(_ForbiddenException value) forbidden,
    required TResult Function(_FormatNotParsableException value)
        formatNotParsable,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_CacheException value) cacheException,
    required TResult Function(_UnknownException value) unknownException,
    required TResult Function(_TimeOutException value) timeOutException,
    required TResult Function(_NotFoundException value) notFoundException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult? Function(_BadRequestException value)? badRequest,
    TResult? Function(_UnAuthorizedException value)? unAuthorized,
    TResult? Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult? Function(_ForbiddenException value)? forbidden,
    TResult? Function(_FormatNotParsableException value)? formatNotParsable,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_CacheException value)? cacheException,
    TResult? Function(_UnknownException value)? unknownException,
    TResult? Function(_TimeOutException value)? timeOutException,
    TResult? Function(_NotFoundException value)? notFoundException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult Function(_BadRequestException value)? badRequest,
    TResult Function(_UnAuthorizedException value)? unAuthorized,
    TResult Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult Function(_ForbiddenException value)? forbidden,
    TResult Function(_FormatNotParsableException value)? formatNotParsable,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_CacheException value)? cacheException,
    TResult Function(_UnknownException value)? unknownException,
    TResult Function(_TimeOutException value)? timeOutException,
    TResult Function(_NotFoundException value)? notFoundException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppExceptionCopyWith<AppException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res, AppException>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res, $Val extends AppException>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

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
abstract class _$$_NoInternetConnectionExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$_NoInternetConnectionExceptionCopyWith(
          _$_NoInternetConnectionException value,
          $Res Function(_$_NoInternetConnectionException) then) =
      __$$_NoInternetConnectionExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_NoInternetConnectionExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_NoInternetConnectionException>
    implements _$$_NoInternetConnectionExceptionCopyWith<$Res> {
  __$$_NoInternetConnectionExceptionCopyWithImpl(
      _$_NoInternetConnectionException _value,
      $Res Function(_$_NoInternetConnectionException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_NoInternetConnectionException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoInternetConnectionException
    implements _NoInternetConnectionException {
  _$_NoInternetConnectionException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.noInternetConnection(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoInternetConnectionException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoInternetConnectionExceptionCopyWith<_$_NoInternetConnectionException>
      get copyWith => __$$_NoInternetConnectionExceptionCopyWithImpl<
          _$_NoInternetConnectionException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unAuthorized,
    required TResult Function(String message) unProcessableEntity,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) formatNotParsable,
    required TResult Function(String message) internalServerException,
    required TResult Function(String message) cacheException,
    required TResult Function(String message) unknownException,
    required TResult Function(String message) timeOutException,
    required TResult Function(String message) notFoundException,
  }) {
    return noInternetConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unAuthorized,
    TResult? Function(String message)? unProcessableEntity,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? formatNotParsable,
    TResult? Function(String message)? internalServerException,
    TResult? Function(String message)? cacheException,
    TResult? Function(String message)? unknownException,
    TResult? Function(String message)? timeOutException,
    TResult? Function(String message)? notFoundException,
  }) {
    return noInternetConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unAuthorized,
    TResult Function(String message)? unProcessableEntity,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? formatNotParsable,
    TResult Function(String message)? internalServerException,
    TResult Function(String message)? cacheException,
    TResult Function(String message)? unknownException,
    TResult Function(String message)? timeOutException,
    TResult Function(String message)? notFoundException,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnection,
    required TResult Function(_BadRequestException value) badRequest,
    required TResult Function(_UnAuthorizedException value) unAuthorized,
    required TResult Function(_UnProcessableEntityException value)
        unProcessableEntity,
    required TResult Function(_ForbiddenException value) forbidden,
    required TResult Function(_FormatNotParsableException value)
        formatNotParsable,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_CacheException value) cacheException,
    required TResult Function(_UnknownException value) unknownException,
    required TResult Function(_TimeOutException value) timeOutException,
    required TResult Function(_NotFoundException value) notFoundException,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult? Function(_BadRequestException value)? badRequest,
    TResult? Function(_UnAuthorizedException value)? unAuthorized,
    TResult? Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult? Function(_ForbiddenException value)? forbidden,
    TResult? Function(_FormatNotParsableException value)? formatNotParsable,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_CacheException value)? cacheException,
    TResult? Function(_UnknownException value)? unknownException,
    TResult? Function(_TimeOutException value)? timeOutException,
    TResult? Function(_NotFoundException value)? notFoundException,
  }) {
    return noInternetConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult Function(_BadRequestException value)? badRequest,
    TResult Function(_UnAuthorizedException value)? unAuthorized,
    TResult Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult Function(_ForbiddenException value)? forbidden,
    TResult Function(_FormatNotParsableException value)? formatNotParsable,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_CacheException value)? cacheException,
    TResult Function(_UnknownException value)? unknownException,
    TResult Function(_TimeOutException value)? timeOutException,
    TResult Function(_NotFoundException value)? notFoundException,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class _NoInternetConnectionException implements AppException {
  factory _NoInternetConnectionException({required final String message}) =
      _$_NoInternetConnectionException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NoInternetConnectionExceptionCopyWith<_$_NoInternetConnectionException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BadRequestExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$_BadRequestExceptionCopyWith(_$_BadRequestException value,
          $Res Function(_$_BadRequestException) then) =
      __$$_BadRequestExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_BadRequestExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_BadRequestException>
    implements _$$_BadRequestExceptionCopyWith<$Res> {
  __$$_BadRequestExceptionCopyWithImpl(_$_BadRequestException _value,
      $Res Function(_$_BadRequestException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_BadRequestException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BadRequestException implements _BadRequestException {
  _$_BadRequestException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.badRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BadRequestException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BadRequestExceptionCopyWith<_$_BadRequestException> get copyWith =>
      __$$_BadRequestExceptionCopyWithImpl<_$_BadRequestException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unAuthorized,
    required TResult Function(String message) unProcessableEntity,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) formatNotParsable,
    required TResult Function(String message) internalServerException,
    required TResult Function(String message) cacheException,
    required TResult Function(String message) unknownException,
    required TResult Function(String message) timeOutException,
    required TResult Function(String message) notFoundException,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unAuthorized,
    TResult? Function(String message)? unProcessableEntity,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? formatNotParsable,
    TResult? Function(String message)? internalServerException,
    TResult? Function(String message)? cacheException,
    TResult? Function(String message)? unknownException,
    TResult? Function(String message)? timeOutException,
    TResult? Function(String message)? notFoundException,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unAuthorized,
    TResult Function(String message)? unProcessableEntity,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? formatNotParsable,
    TResult Function(String message)? internalServerException,
    TResult Function(String message)? cacheException,
    TResult Function(String message)? unknownException,
    TResult Function(String message)? timeOutException,
    TResult Function(String message)? notFoundException,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnection,
    required TResult Function(_BadRequestException value) badRequest,
    required TResult Function(_UnAuthorizedException value) unAuthorized,
    required TResult Function(_UnProcessableEntityException value)
        unProcessableEntity,
    required TResult Function(_ForbiddenException value) forbidden,
    required TResult Function(_FormatNotParsableException value)
        formatNotParsable,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_CacheException value) cacheException,
    required TResult Function(_UnknownException value) unknownException,
    required TResult Function(_TimeOutException value) timeOutException,
    required TResult Function(_NotFoundException value) notFoundException,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult? Function(_BadRequestException value)? badRequest,
    TResult? Function(_UnAuthorizedException value)? unAuthorized,
    TResult? Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult? Function(_ForbiddenException value)? forbidden,
    TResult? Function(_FormatNotParsableException value)? formatNotParsable,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_CacheException value)? cacheException,
    TResult? Function(_UnknownException value)? unknownException,
    TResult? Function(_TimeOutException value)? timeOutException,
    TResult? Function(_NotFoundException value)? notFoundException,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult Function(_BadRequestException value)? badRequest,
    TResult Function(_UnAuthorizedException value)? unAuthorized,
    TResult Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult Function(_ForbiddenException value)? forbidden,
    TResult Function(_FormatNotParsableException value)? formatNotParsable,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_CacheException value)? cacheException,
    TResult Function(_UnknownException value)? unknownException,
    TResult Function(_TimeOutException value)? timeOutException,
    TResult Function(_NotFoundException value)? notFoundException,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequestException implements AppException {
  factory _BadRequestException({required final String message}) =
      _$_BadRequestException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_BadRequestExceptionCopyWith<_$_BadRequestException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthorizedExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$_UnAuthorizedExceptionCopyWith(_$_UnAuthorizedException value,
          $Res Function(_$_UnAuthorizedException) then) =
      __$$_UnAuthorizedExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnAuthorizedExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_UnAuthorizedException>
    implements _$$_UnAuthorizedExceptionCopyWith<$Res> {
  __$$_UnAuthorizedExceptionCopyWithImpl(_$_UnAuthorizedException _value,
      $Res Function(_$_UnAuthorizedException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UnAuthorizedException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnAuthorizedException implements _UnAuthorizedException {
  _$_UnAuthorizedException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.unAuthorized(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnAuthorizedException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnAuthorizedExceptionCopyWith<_$_UnAuthorizedException> get copyWith =>
      __$$_UnAuthorizedExceptionCopyWithImpl<_$_UnAuthorizedException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unAuthorized,
    required TResult Function(String message) unProcessableEntity,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) formatNotParsable,
    required TResult Function(String message) internalServerException,
    required TResult Function(String message) cacheException,
    required TResult Function(String message) unknownException,
    required TResult Function(String message) timeOutException,
    required TResult Function(String message) notFoundException,
  }) {
    return unAuthorized(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unAuthorized,
    TResult? Function(String message)? unProcessableEntity,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? formatNotParsable,
    TResult? Function(String message)? internalServerException,
    TResult? Function(String message)? cacheException,
    TResult? Function(String message)? unknownException,
    TResult? Function(String message)? timeOutException,
    TResult? Function(String message)? notFoundException,
  }) {
    return unAuthorized?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unAuthorized,
    TResult Function(String message)? unProcessableEntity,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? formatNotParsable,
    TResult Function(String message)? internalServerException,
    TResult Function(String message)? cacheException,
    TResult Function(String message)? unknownException,
    TResult Function(String message)? timeOutException,
    TResult Function(String message)? notFoundException,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnection,
    required TResult Function(_BadRequestException value) badRequest,
    required TResult Function(_UnAuthorizedException value) unAuthorized,
    required TResult Function(_UnProcessableEntityException value)
        unProcessableEntity,
    required TResult Function(_ForbiddenException value) forbidden,
    required TResult Function(_FormatNotParsableException value)
        formatNotParsable,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_CacheException value) cacheException,
    required TResult Function(_UnknownException value) unknownException,
    required TResult Function(_TimeOutException value) timeOutException,
    required TResult Function(_NotFoundException value) notFoundException,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult? Function(_BadRequestException value)? badRequest,
    TResult? Function(_UnAuthorizedException value)? unAuthorized,
    TResult? Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult? Function(_ForbiddenException value)? forbidden,
    TResult? Function(_FormatNotParsableException value)? formatNotParsable,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_CacheException value)? cacheException,
    TResult? Function(_UnknownException value)? unknownException,
    TResult? Function(_TimeOutException value)? timeOutException,
    TResult? Function(_NotFoundException value)? notFoundException,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult Function(_BadRequestException value)? badRequest,
    TResult Function(_UnAuthorizedException value)? unAuthorized,
    TResult Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult Function(_ForbiddenException value)? forbidden,
    TResult Function(_FormatNotParsableException value)? formatNotParsable,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_CacheException value)? cacheException,
    TResult Function(_UnknownException value)? unknownException,
    TResult Function(_TimeOutException value)? timeOutException,
    TResult Function(_NotFoundException value)? notFoundException,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorizedException implements AppException {
  factory _UnAuthorizedException({required final String message}) =
      _$_UnAuthorizedException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UnAuthorizedExceptionCopyWith<_$_UnAuthorizedException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnProcessableEntityExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$_UnProcessableEntityExceptionCopyWith(
          _$_UnProcessableEntityException value,
          $Res Function(_$_UnProcessableEntityException) then) =
      __$$_UnProcessableEntityExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnProcessableEntityExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_UnProcessableEntityException>
    implements _$$_UnProcessableEntityExceptionCopyWith<$Res> {
  __$$_UnProcessableEntityExceptionCopyWithImpl(
      _$_UnProcessableEntityException _value,
      $Res Function(_$_UnProcessableEntityException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UnProcessableEntityException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnProcessableEntityException implements _UnProcessableEntityException {
  _$_UnProcessableEntityException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.unProcessableEntity(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnProcessableEntityException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnProcessableEntityExceptionCopyWith<_$_UnProcessableEntityException>
      get copyWith => __$$_UnProcessableEntityExceptionCopyWithImpl<
          _$_UnProcessableEntityException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unAuthorized,
    required TResult Function(String message) unProcessableEntity,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) formatNotParsable,
    required TResult Function(String message) internalServerException,
    required TResult Function(String message) cacheException,
    required TResult Function(String message) unknownException,
    required TResult Function(String message) timeOutException,
    required TResult Function(String message) notFoundException,
  }) {
    return unProcessableEntity(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unAuthorized,
    TResult? Function(String message)? unProcessableEntity,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? formatNotParsable,
    TResult? Function(String message)? internalServerException,
    TResult? Function(String message)? cacheException,
    TResult? Function(String message)? unknownException,
    TResult? Function(String message)? timeOutException,
    TResult? Function(String message)? notFoundException,
  }) {
    return unProcessableEntity?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unAuthorized,
    TResult Function(String message)? unProcessableEntity,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? formatNotParsable,
    TResult Function(String message)? internalServerException,
    TResult Function(String message)? cacheException,
    TResult Function(String message)? unknownException,
    TResult Function(String message)? timeOutException,
    TResult Function(String message)? notFoundException,
    required TResult orElse(),
  }) {
    if (unProcessableEntity != null) {
      return unProcessableEntity(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnection,
    required TResult Function(_BadRequestException value) badRequest,
    required TResult Function(_UnAuthorizedException value) unAuthorized,
    required TResult Function(_UnProcessableEntityException value)
        unProcessableEntity,
    required TResult Function(_ForbiddenException value) forbidden,
    required TResult Function(_FormatNotParsableException value)
        formatNotParsable,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_CacheException value) cacheException,
    required TResult Function(_UnknownException value) unknownException,
    required TResult Function(_TimeOutException value) timeOutException,
    required TResult Function(_NotFoundException value) notFoundException,
  }) {
    return unProcessableEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult? Function(_BadRequestException value)? badRequest,
    TResult? Function(_UnAuthorizedException value)? unAuthorized,
    TResult? Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult? Function(_ForbiddenException value)? forbidden,
    TResult? Function(_FormatNotParsableException value)? formatNotParsable,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_CacheException value)? cacheException,
    TResult? Function(_UnknownException value)? unknownException,
    TResult? Function(_TimeOutException value)? timeOutException,
    TResult? Function(_NotFoundException value)? notFoundException,
  }) {
    return unProcessableEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult Function(_BadRequestException value)? badRequest,
    TResult Function(_UnAuthorizedException value)? unAuthorized,
    TResult Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult Function(_ForbiddenException value)? forbidden,
    TResult Function(_FormatNotParsableException value)? formatNotParsable,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_CacheException value)? cacheException,
    TResult Function(_UnknownException value)? unknownException,
    TResult Function(_TimeOutException value)? timeOutException,
    TResult Function(_NotFoundException value)? notFoundException,
    required TResult orElse(),
  }) {
    if (unProcessableEntity != null) {
      return unProcessableEntity(this);
    }
    return orElse();
  }
}

abstract class _UnProcessableEntityException implements AppException {
  factory _UnProcessableEntityException({required final String message}) =
      _$_UnProcessableEntityException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UnProcessableEntityExceptionCopyWith<_$_UnProcessableEntityException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ForbiddenExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$_ForbiddenExceptionCopyWith(_$_ForbiddenException value,
          $Res Function(_$_ForbiddenException) then) =
      __$$_ForbiddenExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ForbiddenExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_ForbiddenException>
    implements _$$_ForbiddenExceptionCopyWith<$Res> {
  __$$_ForbiddenExceptionCopyWithImpl(
      _$_ForbiddenException _value, $Res Function(_$_ForbiddenException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_ForbiddenException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ForbiddenException implements _ForbiddenException {
  _$_ForbiddenException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.forbidden(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForbiddenException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForbiddenExceptionCopyWith<_$_ForbiddenException> get copyWith =>
      __$$_ForbiddenExceptionCopyWithImpl<_$_ForbiddenException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unAuthorized,
    required TResult Function(String message) unProcessableEntity,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) formatNotParsable,
    required TResult Function(String message) internalServerException,
    required TResult Function(String message) cacheException,
    required TResult Function(String message) unknownException,
    required TResult Function(String message) timeOutException,
    required TResult Function(String message) notFoundException,
  }) {
    return forbidden(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unAuthorized,
    TResult? Function(String message)? unProcessableEntity,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? formatNotParsable,
    TResult? Function(String message)? internalServerException,
    TResult? Function(String message)? cacheException,
    TResult? Function(String message)? unknownException,
    TResult? Function(String message)? timeOutException,
    TResult? Function(String message)? notFoundException,
  }) {
    return forbidden?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unAuthorized,
    TResult Function(String message)? unProcessableEntity,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? formatNotParsable,
    TResult Function(String message)? internalServerException,
    TResult Function(String message)? cacheException,
    TResult Function(String message)? unknownException,
    TResult Function(String message)? timeOutException,
    TResult Function(String message)? notFoundException,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnection,
    required TResult Function(_BadRequestException value) badRequest,
    required TResult Function(_UnAuthorizedException value) unAuthorized,
    required TResult Function(_UnProcessableEntityException value)
        unProcessableEntity,
    required TResult Function(_ForbiddenException value) forbidden,
    required TResult Function(_FormatNotParsableException value)
        formatNotParsable,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_CacheException value) cacheException,
    required TResult Function(_UnknownException value) unknownException,
    required TResult Function(_TimeOutException value) timeOutException,
    required TResult Function(_NotFoundException value) notFoundException,
  }) {
    return forbidden(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult? Function(_BadRequestException value)? badRequest,
    TResult? Function(_UnAuthorizedException value)? unAuthorized,
    TResult? Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult? Function(_ForbiddenException value)? forbidden,
    TResult? Function(_FormatNotParsableException value)? formatNotParsable,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_CacheException value)? cacheException,
    TResult? Function(_UnknownException value)? unknownException,
    TResult? Function(_TimeOutException value)? timeOutException,
    TResult? Function(_NotFoundException value)? notFoundException,
  }) {
    return forbidden?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult Function(_BadRequestException value)? badRequest,
    TResult Function(_UnAuthorizedException value)? unAuthorized,
    TResult Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult Function(_ForbiddenException value)? forbidden,
    TResult Function(_FormatNotParsableException value)? formatNotParsable,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_CacheException value)? cacheException,
    TResult Function(_UnknownException value)? unknownException,
    TResult Function(_TimeOutException value)? timeOutException,
    TResult Function(_NotFoundException value)? notFoundException,
    required TResult orElse(),
  }) {
    if (forbidden != null) {
      return forbidden(this);
    }
    return orElse();
  }
}

abstract class _ForbiddenException implements AppException {
  factory _ForbiddenException({required final String message}) =
      _$_ForbiddenException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_ForbiddenExceptionCopyWith<_$_ForbiddenException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FormatNotParsableExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$_FormatNotParsableExceptionCopyWith(
          _$_FormatNotParsableException value,
          $Res Function(_$_FormatNotParsableException) then) =
      __$$_FormatNotParsableExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_FormatNotParsableExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_FormatNotParsableException>
    implements _$$_FormatNotParsableExceptionCopyWith<$Res> {
  __$$_FormatNotParsableExceptionCopyWithImpl(
      _$_FormatNotParsableException _value,
      $Res Function(_$_FormatNotParsableException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_FormatNotParsableException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FormatNotParsableException implements _FormatNotParsableException {
  _$_FormatNotParsableException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.formatNotParsable(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormatNotParsableException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormatNotParsableExceptionCopyWith<_$_FormatNotParsableException>
      get copyWith => __$$_FormatNotParsableExceptionCopyWithImpl<
          _$_FormatNotParsableException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unAuthorized,
    required TResult Function(String message) unProcessableEntity,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) formatNotParsable,
    required TResult Function(String message) internalServerException,
    required TResult Function(String message) cacheException,
    required TResult Function(String message) unknownException,
    required TResult Function(String message) timeOutException,
    required TResult Function(String message) notFoundException,
  }) {
    return formatNotParsable(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unAuthorized,
    TResult? Function(String message)? unProcessableEntity,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? formatNotParsable,
    TResult? Function(String message)? internalServerException,
    TResult? Function(String message)? cacheException,
    TResult? Function(String message)? unknownException,
    TResult? Function(String message)? timeOutException,
    TResult? Function(String message)? notFoundException,
  }) {
    return formatNotParsable?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unAuthorized,
    TResult Function(String message)? unProcessableEntity,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? formatNotParsable,
    TResult Function(String message)? internalServerException,
    TResult Function(String message)? cacheException,
    TResult Function(String message)? unknownException,
    TResult Function(String message)? timeOutException,
    TResult Function(String message)? notFoundException,
    required TResult orElse(),
  }) {
    if (formatNotParsable != null) {
      return formatNotParsable(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnection,
    required TResult Function(_BadRequestException value) badRequest,
    required TResult Function(_UnAuthorizedException value) unAuthorized,
    required TResult Function(_UnProcessableEntityException value)
        unProcessableEntity,
    required TResult Function(_ForbiddenException value) forbidden,
    required TResult Function(_FormatNotParsableException value)
        formatNotParsable,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_CacheException value) cacheException,
    required TResult Function(_UnknownException value) unknownException,
    required TResult Function(_TimeOutException value) timeOutException,
    required TResult Function(_NotFoundException value) notFoundException,
  }) {
    return formatNotParsable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult? Function(_BadRequestException value)? badRequest,
    TResult? Function(_UnAuthorizedException value)? unAuthorized,
    TResult? Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult? Function(_ForbiddenException value)? forbidden,
    TResult? Function(_FormatNotParsableException value)? formatNotParsable,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_CacheException value)? cacheException,
    TResult? Function(_UnknownException value)? unknownException,
    TResult? Function(_TimeOutException value)? timeOutException,
    TResult? Function(_NotFoundException value)? notFoundException,
  }) {
    return formatNotParsable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult Function(_BadRequestException value)? badRequest,
    TResult Function(_UnAuthorizedException value)? unAuthorized,
    TResult Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult Function(_ForbiddenException value)? forbidden,
    TResult Function(_FormatNotParsableException value)? formatNotParsable,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_CacheException value)? cacheException,
    TResult Function(_UnknownException value)? unknownException,
    TResult Function(_TimeOutException value)? timeOutException,
    TResult Function(_NotFoundException value)? notFoundException,
    required TResult orElse(),
  }) {
    if (formatNotParsable != null) {
      return formatNotParsable(this);
    }
    return orElse();
  }
}

abstract class _FormatNotParsableException implements AppException {
  factory _FormatNotParsableException({required final String message}) =
      _$_FormatNotParsableException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_FormatNotParsableExceptionCopyWith<_$_FormatNotParsableException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InternalServerExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$_InternalServerExceptionCopyWith(_$_InternalServerException value,
          $Res Function(_$_InternalServerException) then) =
      __$$_InternalServerExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_InternalServerExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_InternalServerException>
    implements _$$_InternalServerExceptionCopyWith<$Res> {
  __$$_InternalServerExceptionCopyWithImpl(_$_InternalServerException _value,
      $Res Function(_$_InternalServerException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_InternalServerException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InternalServerException implements _InternalServerException {
  _$_InternalServerException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.internalServerException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InternalServerException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InternalServerExceptionCopyWith<_$_InternalServerException>
      get copyWith =>
          __$$_InternalServerExceptionCopyWithImpl<_$_InternalServerException>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unAuthorized,
    required TResult Function(String message) unProcessableEntity,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) formatNotParsable,
    required TResult Function(String message) internalServerException,
    required TResult Function(String message) cacheException,
    required TResult Function(String message) unknownException,
    required TResult Function(String message) timeOutException,
    required TResult Function(String message) notFoundException,
  }) {
    return internalServerException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unAuthorized,
    TResult? Function(String message)? unProcessableEntity,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? formatNotParsable,
    TResult? Function(String message)? internalServerException,
    TResult? Function(String message)? cacheException,
    TResult? Function(String message)? unknownException,
    TResult? Function(String message)? timeOutException,
    TResult? Function(String message)? notFoundException,
  }) {
    return internalServerException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unAuthorized,
    TResult Function(String message)? unProcessableEntity,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? formatNotParsable,
    TResult Function(String message)? internalServerException,
    TResult Function(String message)? cacheException,
    TResult Function(String message)? unknownException,
    TResult Function(String message)? timeOutException,
    TResult Function(String message)? notFoundException,
    required TResult orElse(),
  }) {
    if (internalServerException != null) {
      return internalServerException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnection,
    required TResult Function(_BadRequestException value) badRequest,
    required TResult Function(_UnAuthorizedException value) unAuthorized,
    required TResult Function(_UnProcessableEntityException value)
        unProcessableEntity,
    required TResult Function(_ForbiddenException value) forbidden,
    required TResult Function(_FormatNotParsableException value)
        formatNotParsable,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_CacheException value) cacheException,
    required TResult Function(_UnknownException value) unknownException,
    required TResult Function(_TimeOutException value) timeOutException,
    required TResult Function(_NotFoundException value) notFoundException,
  }) {
    return internalServerException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult? Function(_BadRequestException value)? badRequest,
    TResult? Function(_UnAuthorizedException value)? unAuthorized,
    TResult? Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult? Function(_ForbiddenException value)? forbidden,
    TResult? Function(_FormatNotParsableException value)? formatNotParsable,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_CacheException value)? cacheException,
    TResult? Function(_UnknownException value)? unknownException,
    TResult? Function(_TimeOutException value)? timeOutException,
    TResult? Function(_NotFoundException value)? notFoundException,
  }) {
    return internalServerException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult Function(_BadRequestException value)? badRequest,
    TResult Function(_UnAuthorizedException value)? unAuthorized,
    TResult Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult Function(_ForbiddenException value)? forbidden,
    TResult Function(_FormatNotParsableException value)? formatNotParsable,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_CacheException value)? cacheException,
    TResult Function(_UnknownException value)? unknownException,
    TResult Function(_TimeOutException value)? timeOutException,
    TResult Function(_NotFoundException value)? notFoundException,
    required TResult orElse(),
  }) {
    if (internalServerException != null) {
      return internalServerException(this);
    }
    return orElse();
  }
}

abstract class _InternalServerException implements AppException {
  factory _InternalServerException({required final String message}) =
      _$_InternalServerException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_InternalServerExceptionCopyWith<_$_InternalServerException>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CacheExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$_CacheExceptionCopyWith(
          _$_CacheException value, $Res Function(_$_CacheException) then) =
      __$$_CacheExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_CacheExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_CacheException>
    implements _$$_CacheExceptionCopyWith<$Res> {
  __$$_CacheExceptionCopyWithImpl(
      _$_CacheException _value, $Res Function(_$_CacheException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_CacheException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CacheException implements _CacheException {
  _$_CacheException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.cacheException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CacheException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CacheExceptionCopyWith<_$_CacheException> get copyWith =>
      __$$_CacheExceptionCopyWithImpl<_$_CacheException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unAuthorized,
    required TResult Function(String message) unProcessableEntity,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) formatNotParsable,
    required TResult Function(String message) internalServerException,
    required TResult Function(String message) cacheException,
    required TResult Function(String message) unknownException,
    required TResult Function(String message) timeOutException,
    required TResult Function(String message) notFoundException,
  }) {
    return cacheException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unAuthorized,
    TResult? Function(String message)? unProcessableEntity,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? formatNotParsable,
    TResult? Function(String message)? internalServerException,
    TResult? Function(String message)? cacheException,
    TResult? Function(String message)? unknownException,
    TResult? Function(String message)? timeOutException,
    TResult? Function(String message)? notFoundException,
  }) {
    return cacheException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unAuthorized,
    TResult Function(String message)? unProcessableEntity,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? formatNotParsable,
    TResult Function(String message)? internalServerException,
    TResult Function(String message)? cacheException,
    TResult Function(String message)? unknownException,
    TResult Function(String message)? timeOutException,
    TResult Function(String message)? notFoundException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnection,
    required TResult Function(_BadRequestException value) badRequest,
    required TResult Function(_UnAuthorizedException value) unAuthorized,
    required TResult Function(_UnProcessableEntityException value)
        unProcessableEntity,
    required TResult Function(_ForbiddenException value) forbidden,
    required TResult Function(_FormatNotParsableException value)
        formatNotParsable,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_CacheException value) cacheException,
    required TResult Function(_UnknownException value) unknownException,
    required TResult Function(_TimeOutException value) timeOutException,
    required TResult Function(_NotFoundException value) notFoundException,
  }) {
    return cacheException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult? Function(_BadRequestException value)? badRequest,
    TResult? Function(_UnAuthorizedException value)? unAuthorized,
    TResult? Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult? Function(_ForbiddenException value)? forbidden,
    TResult? Function(_FormatNotParsableException value)? formatNotParsable,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_CacheException value)? cacheException,
    TResult? Function(_UnknownException value)? unknownException,
    TResult? Function(_TimeOutException value)? timeOutException,
    TResult? Function(_NotFoundException value)? notFoundException,
  }) {
    return cacheException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult Function(_BadRequestException value)? badRequest,
    TResult Function(_UnAuthorizedException value)? unAuthorized,
    TResult Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult Function(_ForbiddenException value)? forbidden,
    TResult Function(_FormatNotParsableException value)? formatNotParsable,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_CacheException value)? cacheException,
    TResult Function(_UnknownException value)? unknownException,
    TResult Function(_TimeOutException value)? timeOutException,
    TResult Function(_NotFoundException value)? notFoundException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(this);
    }
    return orElse();
  }
}

abstract class _CacheException implements AppException {
  factory _CacheException({required final String message}) = _$_CacheException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_CacheExceptionCopyWith<_$_CacheException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnknownExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$_UnknownExceptionCopyWith(
          _$_UnknownException value, $Res Function(_$_UnknownException) then) =
      __$$_UnknownExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_UnknownExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_UnknownException>
    implements _$$_UnknownExceptionCopyWith<$Res> {
  __$$_UnknownExceptionCopyWithImpl(
      _$_UnknownException _value, $Res Function(_$_UnknownException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_UnknownException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UnknownException implements _UnknownException {
  _$_UnknownException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.unknownException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnknownException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnknownExceptionCopyWith<_$_UnknownException> get copyWith =>
      __$$_UnknownExceptionCopyWithImpl<_$_UnknownException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unAuthorized,
    required TResult Function(String message) unProcessableEntity,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) formatNotParsable,
    required TResult Function(String message) internalServerException,
    required TResult Function(String message) cacheException,
    required TResult Function(String message) unknownException,
    required TResult Function(String message) timeOutException,
    required TResult Function(String message) notFoundException,
  }) {
    return unknownException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unAuthorized,
    TResult? Function(String message)? unProcessableEntity,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? formatNotParsable,
    TResult? Function(String message)? internalServerException,
    TResult? Function(String message)? cacheException,
    TResult? Function(String message)? unknownException,
    TResult? Function(String message)? timeOutException,
    TResult? Function(String message)? notFoundException,
  }) {
    return unknownException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unAuthorized,
    TResult Function(String message)? unProcessableEntity,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? formatNotParsable,
    TResult Function(String message)? internalServerException,
    TResult Function(String message)? cacheException,
    TResult Function(String message)? unknownException,
    TResult Function(String message)? timeOutException,
    TResult Function(String message)? notFoundException,
    required TResult orElse(),
  }) {
    if (unknownException != null) {
      return unknownException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnection,
    required TResult Function(_BadRequestException value) badRequest,
    required TResult Function(_UnAuthorizedException value) unAuthorized,
    required TResult Function(_UnProcessableEntityException value)
        unProcessableEntity,
    required TResult Function(_ForbiddenException value) forbidden,
    required TResult Function(_FormatNotParsableException value)
        formatNotParsable,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_CacheException value) cacheException,
    required TResult Function(_UnknownException value) unknownException,
    required TResult Function(_TimeOutException value) timeOutException,
    required TResult Function(_NotFoundException value) notFoundException,
  }) {
    return unknownException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult? Function(_BadRequestException value)? badRequest,
    TResult? Function(_UnAuthorizedException value)? unAuthorized,
    TResult? Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult? Function(_ForbiddenException value)? forbidden,
    TResult? Function(_FormatNotParsableException value)? formatNotParsable,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_CacheException value)? cacheException,
    TResult? Function(_UnknownException value)? unknownException,
    TResult? Function(_TimeOutException value)? timeOutException,
    TResult? Function(_NotFoundException value)? notFoundException,
  }) {
    return unknownException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult Function(_BadRequestException value)? badRequest,
    TResult Function(_UnAuthorizedException value)? unAuthorized,
    TResult Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult Function(_ForbiddenException value)? forbidden,
    TResult Function(_FormatNotParsableException value)? formatNotParsable,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_CacheException value)? cacheException,
    TResult Function(_UnknownException value)? unknownException,
    TResult Function(_TimeOutException value)? timeOutException,
    TResult Function(_NotFoundException value)? notFoundException,
    required TResult orElse(),
  }) {
    if (unknownException != null) {
      return unknownException(this);
    }
    return orElse();
  }
}

abstract class _UnknownException implements AppException {
  factory _UnknownException({required final String message}) =
      _$_UnknownException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_UnknownExceptionCopyWith<_$_UnknownException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimeOutExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$_TimeOutExceptionCopyWith(
          _$_TimeOutException value, $Res Function(_$_TimeOutException) then) =
      __$$_TimeOutExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_TimeOutExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_TimeOutException>
    implements _$$_TimeOutExceptionCopyWith<$Res> {
  __$$_TimeOutExceptionCopyWithImpl(
      _$_TimeOutException _value, $Res Function(_$_TimeOutException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_TimeOutException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TimeOutException implements _TimeOutException {
  _$_TimeOutException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.timeOutException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimeOutException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeOutExceptionCopyWith<_$_TimeOutException> get copyWith =>
      __$$_TimeOutExceptionCopyWithImpl<_$_TimeOutException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unAuthorized,
    required TResult Function(String message) unProcessableEntity,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) formatNotParsable,
    required TResult Function(String message) internalServerException,
    required TResult Function(String message) cacheException,
    required TResult Function(String message) unknownException,
    required TResult Function(String message) timeOutException,
    required TResult Function(String message) notFoundException,
  }) {
    return timeOutException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unAuthorized,
    TResult? Function(String message)? unProcessableEntity,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? formatNotParsable,
    TResult? Function(String message)? internalServerException,
    TResult? Function(String message)? cacheException,
    TResult? Function(String message)? unknownException,
    TResult? Function(String message)? timeOutException,
    TResult? Function(String message)? notFoundException,
  }) {
    return timeOutException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unAuthorized,
    TResult Function(String message)? unProcessableEntity,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? formatNotParsable,
    TResult Function(String message)? internalServerException,
    TResult Function(String message)? cacheException,
    TResult Function(String message)? unknownException,
    TResult Function(String message)? timeOutException,
    TResult Function(String message)? notFoundException,
    required TResult orElse(),
  }) {
    if (timeOutException != null) {
      return timeOutException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnection,
    required TResult Function(_BadRequestException value) badRequest,
    required TResult Function(_UnAuthorizedException value) unAuthorized,
    required TResult Function(_UnProcessableEntityException value)
        unProcessableEntity,
    required TResult Function(_ForbiddenException value) forbidden,
    required TResult Function(_FormatNotParsableException value)
        formatNotParsable,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_CacheException value) cacheException,
    required TResult Function(_UnknownException value) unknownException,
    required TResult Function(_TimeOutException value) timeOutException,
    required TResult Function(_NotFoundException value) notFoundException,
  }) {
    return timeOutException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult? Function(_BadRequestException value)? badRequest,
    TResult? Function(_UnAuthorizedException value)? unAuthorized,
    TResult? Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult? Function(_ForbiddenException value)? forbidden,
    TResult? Function(_FormatNotParsableException value)? formatNotParsable,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_CacheException value)? cacheException,
    TResult? Function(_UnknownException value)? unknownException,
    TResult? Function(_TimeOutException value)? timeOutException,
    TResult? Function(_NotFoundException value)? notFoundException,
  }) {
    return timeOutException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult Function(_BadRequestException value)? badRequest,
    TResult Function(_UnAuthorizedException value)? unAuthorized,
    TResult Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult Function(_ForbiddenException value)? forbidden,
    TResult Function(_FormatNotParsableException value)? formatNotParsable,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_CacheException value)? cacheException,
    TResult Function(_UnknownException value)? unknownException,
    TResult Function(_TimeOutException value)? timeOutException,
    TResult Function(_NotFoundException value)? notFoundException,
    required TResult orElse(),
  }) {
    if (timeOutException != null) {
      return timeOutException(this);
    }
    return orElse();
  }
}

abstract class _TimeOutException implements AppException {
  factory _TimeOutException({required final String message}) =
      _$_TimeOutException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_TimeOutExceptionCopyWith<_$_TimeOutException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotFoundExceptionCopyWith<$Res>
    implements $AppExceptionCopyWith<$Res> {
  factory _$$_NotFoundExceptionCopyWith(_$_NotFoundException value,
          $Res Function(_$_NotFoundException) then) =
      __$$_NotFoundExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_NotFoundExceptionCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$_NotFoundException>
    implements _$$_NotFoundExceptionCopyWith<$Res> {
  __$$_NotFoundExceptionCopyWithImpl(
      _$_NotFoundException _value, $Res Function(_$_NotFoundException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_NotFoundException(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NotFoundException implements _NotFoundException {
  _$_NotFoundException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppException.notFoundException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotFoundException &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotFoundExceptionCopyWith<_$_NotFoundException> get copyWith =>
      __$$_NotFoundExceptionCopyWithImpl<_$_NotFoundException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) noInternetConnection,
    required TResult Function(String message) badRequest,
    required TResult Function(String message) unAuthorized,
    required TResult Function(String message) unProcessableEntity,
    required TResult Function(String message) forbidden,
    required TResult Function(String message) formatNotParsable,
    required TResult Function(String message) internalServerException,
    required TResult Function(String message) cacheException,
    required TResult Function(String message) unknownException,
    required TResult Function(String message) timeOutException,
    required TResult Function(String message) notFoundException,
  }) {
    return notFoundException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? noInternetConnection,
    TResult? Function(String message)? badRequest,
    TResult? Function(String message)? unAuthorized,
    TResult? Function(String message)? unProcessableEntity,
    TResult? Function(String message)? forbidden,
    TResult? Function(String message)? formatNotParsable,
    TResult? Function(String message)? internalServerException,
    TResult? Function(String message)? cacheException,
    TResult? Function(String message)? unknownException,
    TResult? Function(String message)? timeOutException,
    TResult? Function(String message)? notFoundException,
  }) {
    return notFoundException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? noInternetConnection,
    TResult Function(String message)? badRequest,
    TResult Function(String message)? unAuthorized,
    TResult Function(String message)? unProcessableEntity,
    TResult Function(String message)? forbidden,
    TResult Function(String message)? formatNotParsable,
    TResult Function(String message)? internalServerException,
    TResult Function(String message)? cacheException,
    TResult Function(String message)? unknownException,
    TResult Function(String message)? timeOutException,
    TResult Function(String message)? notFoundException,
    required TResult orElse(),
  }) {
    if (notFoundException != null) {
      return notFoundException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoInternetConnectionException value)
        noInternetConnection,
    required TResult Function(_BadRequestException value) badRequest,
    required TResult Function(_UnAuthorizedException value) unAuthorized,
    required TResult Function(_UnProcessableEntityException value)
        unProcessableEntity,
    required TResult Function(_ForbiddenException value) forbidden,
    required TResult Function(_FormatNotParsableException value)
        formatNotParsable,
    required TResult Function(_InternalServerException value)
        internalServerException,
    required TResult Function(_CacheException value) cacheException,
    required TResult Function(_UnknownException value) unknownException,
    required TResult Function(_TimeOutException value) timeOutException,
    required TResult Function(_NotFoundException value) notFoundException,
  }) {
    return notFoundException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult? Function(_BadRequestException value)? badRequest,
    TResult? Function(_UnAuthorizedException value)? unAuthorized,
    TResult? Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult? Function(_ForbiddenException value)? forbidden,
    TResult? Function(_FormatNotParsableException value)? formatNotParsable,
    TResult? Function(_InternalServerException value)? internalServerException,
    TResult? Function(_CacheException value)? cacheException,
    TResult? Function(_UnknownException value)? unknownException,
    TResult? Function(_TimeOutException value)? timeOutException,
    TResult? Function(_NotFoundException value)? notFoundException,
  }) {
    return notFoundException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoInternetConnectionException value)?
        noInternetConnection,
    TResult Function(_BadRequestException value)? badRequest,
    TResult Function(_UnAuthorizedException value)? unAuthorized,
    TResult Function(_UnProcessableEntityException value)? unProcessableEntity,
    TResult Function(_ForbiddenException value)? forbidden,
    TResult Function(_FormatNotParsableException value)? formatNotParsable,
    TResult Function(_InternalServerException value)? internalServerException,
    TResult Function(_CacheException value)? cacheException,
    TResult Function(_UnknownException value)? unknownException,
    TResult Function(_TimeOutException value)? timeOutException,
    TResult Function(_NotFoundException value)? notFoundException,
    required TResult orElse(),
  }) {
    if (notFoundException != null) {
      return notFoundException(this);
    }
    return orElse();
  }
}

abstract class _NotFoundException implements AppException {
  factory _NotFoundException({required final String message}) =
      _$_NotFoundException;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NotFoundExceptionCopyWith<_$_NotFoundException> get copyWith =>
      throw _privateConstructorUsedError;
}

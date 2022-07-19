// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of authentication_model;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthJWTResponseEntity {
  String get access => throw _privateConstructorUsedError;
  String get refresh => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthJWTResponseEntityCopyWith<AuthJWTResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthJWTResponseEntityCopyWith<$Res> {
  factory $AuthJWTResponseEntityCopyWith(AuthJWTResponseEntity value,
          $Res Function(AuthJWTResponseEntity) then) =
      _$AuthJWTResponseEntityCopyWithImpl<$Res>;
  $Res call({String access, String refresh});
}

/// @nodoc
class _$AuthJWTResponseEntityCopyWithImpl<$Res>
    implements $AuthJWTResponseEntityCopyWith<$Res> {
  _$AuthJWTResponseEntityCopyWithImpl(this._value, this._then);

  final AuthJWTResponseEntity _value;
  // ignore: unused_field
  final $Res Function(AuthJWTResponseEntity) _then;

  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_value.copyWith(
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthJWTResponseEntityCopyWith<$Res>
    implements $AuthJWTResponseEntityCopyWith<$Res> {
  factory _$$_AuthJWTResponseEntityCopyWith(_$_AuthJWTResponseEntity value,
          $Res Function(_$_AuthJWTResponseEntity) then) =
      __$$_AuthJWTResponseEntityCopyWithImpl<$Res>;
  @override
  $Res call({String access, String refresh});
}

/// @nodoc
class __$$_AuthJWTResponseEntityCopyWithImpl<$Res>
    extends _$AuthJWTResponseEntityCopyWithImpl<$Res>
    implements _$$_AuthJWTResponseEntityCopyWith<$Res> {
  __$$_AuthJWTResponseEntityCopyWithImpl(_$_AuthJWTResponseEntity _value,
      $Res Function(_$_AuthJWTResponseEntity) _then)
      : super(_value, (v) => _then(v as _$_AuthJWTResponseEntity));

  @override
  _$_AuthJWTResponseEntity get _value =>
      super._value as _$_AuthJWTResponseEntity;

  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_$_AuthJWTResponseEntity(
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthJWTResponseEntity implements _AuthJWTResponseEntity {
  const _$_AuthJWTResponseEntity({required this.access, required this.refresh});

  @override
  final String access;
  @override
  final String refresh;

  @override
  String toString() {
    return 'AuthJWTResponseEntity(access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthJWTResponseEntity &&
            const DeepCollectionEquality().equals(other.access, access) &&
            const DeepCollectionEquality().equals(other.refresh, refresh));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(access),
      const DeepCollectionEquality().hash(refresh));

  @JsonKey(ignore: true)
  @override
  _$$_AuthJWTResponseEntityCopyWith<_$_AuthJWTResponseEntity> get copyWith =>
      __$$_AuthJWTResponseEntityCopyWithImpl<_$_AuthJWTResponseEntity>(
          this, _$identity);
}

abstract class _AuthJWTResponseEntity implements AuthJWTResponseEntity {
  const factory _AuthJWTResponseEntity(
      {required final String access,
      required final String refresh}) = _$_AuthJWTResponseEntity;

  @override
  String get access;
  @override
  String get refresh;
  @override
  @JsonKey(ignore: true)
  _$$_AuthJWTResponseEntityCopyWith<_$_AuthJWTResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginEntity {
  String get username => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEntityCopyWith<LoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEntityCopyWith<$Res> {
  factory $LoginEntityCopyWith(
          LoginEntity value, $Res Function(LoginEntity) then) =
      _$LoginEntityCopyWithImpl<$Res>;
  $Res call({String username, String password});
}

/// @nodoc
class _$LoginEntityCopyWithImpl<$Res> implements $LoginEntityCopyWith<$Res> {
  _$LoginEntityCopyWithImpl(this._value, this._then);

  final LoginEntity _value;
  // ignore: unused_field
  final $Res Function(LoginEntity) _then;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LoginEntityCopyWith<$Res>
    implements $LoginEntityCopyWith<$Res> {
  factory _$$_LoginEntityCopyWith(
          _$_LoginEntity value, $Res Function(_$_LoginEntity) then) =
      __$$_LoginEntityCopyWithImpl<$Res>;
  @override
  $Res call({String username, String password});
}

/// @nodoc
class __$$_LoginEntityCopyWithImpl<$Res> extends _$LoginEntityCopyWithImpl<$Res>
    implements _$$_LoginEntityCopyWith<$Res> {
  __$$_LoginEntityCopyWithImpl(
      _$_LoginEntity _value, $Res Function(_$_LoginEntity) _then)
      : super(_value, (v) => _then(v as _$_LoginEntity));

  @override
  _$_LoginEntity get _value => super._value as _$_LoginEntity;

  @override
  $Res call({
    Object? username = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_LoginEntity(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginEntity implements _LoginEntity {
  const _$_LoginEntity({required this.username, required this.password});

  @override
  final String username;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginEntity(username: $username, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginEntity &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_LoginEntityCopyWith<_$_LoginEntity> get copyWith =>
      __$$_LoginEntityCopyWithImpl<_$_LoginEntity>(this, _$identity);
}

abstract class _LoginEntity implements LoginEntity {
  const factory _LoginEntity(
      {required final String username,
      required final String password}) = _$_LoginEntity;

  @override
  String get username;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginEntityCopyWith<_$_LoginEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AccessTokenEntity {
  String get access => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccessTokenEntityCopyWith<AccessTokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenEntityCopyWith<$Res> {
  factory $AccessTokenEntityCopyWith(
          AccessTokenEntity value, $Res Function(AccessTokenEntity) then) =
      _$AccessTokenEntityCopyWithImpl<$Res>;
  $Res call({String access});
}

/// @nodoc
class _$AccessTokenEntityCopyWithImpl<$Res>
    implements $AccessTokenEntityCopyWith<$Res> {
  _$AccessTokenEntityCopyWithImpl(this._value, this._then);

  final AccessTokenEntity _value;
  // ignore: unused_field
  final $Res Function(AccessTokenEntity) _then;

  @override
  $Res call({
    Object? access = freezed,
  }) {
    return _then(_value.copyWith(
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AccessTokenEntityCopyWith<$Res>
    implements $AccessTokenEntityCopyWith<$Res> {
  factory _$$_AccessTokenEntityCopyWith(_$_AccessTokenEntity value,
          $Res Function(_$_AccessTokenEntity) then) =
      __$$_AccessTokenEntityCopyWithImpl<$Res>;
  @override
  $Res call({String access});
}

/// @nodoc
class __$$_AccessTokenEntityCopyWithImpl<$Res>
    extends _$AccessTokenEntityCopyWithImpl<$Res>
    implements _$$_AccessTokenEntityCopyWith<$Res> {
  __$$_AccessTokenEntityCopyWithImpl(
      _$_AccessTokenEntity _value, $Res Function(_$_AccessTokenEntity) _then)
      : super(_value, (v) => _then(v as _$_AccessTokenEntity));

  @override
  _$_AccessTokenEntity get _value => super._value as _$_AccessTokenEntity;

  @override
  $Res call({
    Object? access = freezed,
  }) {
    return _then(_$_AccessTokenEntity(
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AccessTokenEntity implements _AccessTokenEntity {
  const _$_AccessTokenEntity({required this.access});

  @override
  final String access;

  @override
  String toString() {
    return 'AccessTokenEntity(access: $access)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessTokenEntity &&
            const DeepCollectionEquality().equals(other.access, access));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(access));

  @JsonKey(ignore: true)
  @override
  _$$_AccessTokenEntityCopyWith<_$_AccessTokenEntity> get copyWith =>
      __$$_AccessTokenEntityCopyWithImpl<_$_AccessTokenEntity>(
          this, _$identity);
}

abstract class _AccessTokenEntity implements AccessTokenEntity {
  const factory _AccessTokenEntity({required final String access}) =
      _$_AccessTokenEntity;

  @override
  String get access;
  @override
  @JsonKey(ignore: true)
  _$$_AccessTokenEntityCopyWith<_$_AccessTokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RefreshTokenEntity {
  String get refresh => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RefreshTokenEntityCopyWith<RefreshTokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenEntityCopyWith<$Res> {
  factory $RefreshTokenEntityCopyWith(
          RefreshTokenEntity value, $Res Function(RefreshTokenEntity) then) =
      _$RefreshTokenEntityCopyWithImpl<$Res>;
  $Res call({String refresh});
}

/// @nodoc
class _$RefreshTokenEntityCopyWithImpl<$Res>
    implements $RefreshTokenEntityCopyWith<$Res> {
  _$RefreshTokenEntityCopyWithImpl(this._value, this._then);

  final RefreshTokenEntity _value;
  // ignore: unused_field
  final $Res Function(RefreshTokenEntity) _then;

  @override
  $Res call({
    Object? refresh = freezed,
  }) {
    return _then(_value.copyWith(
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_RefreshTokenEntityCopyWith<$Res>
    implements $RefreshTokenEntityCopyWith<$Res> {
  factory _$$_RefreshTokenEntityCopyWith(_$_RefreshTokenEntity value,
          $Res Function(_$_RefreshTokenEntity) then) =
      __$$_RefreshTokenEntityCopyWithImpl<$Res>;
  @override
  $Res call({String refresh});
}

/// @nodoc
class __$$_RefreshTokenEntityCopyWithImpl<$Res>
    extends _$RefreshTokenEntityCopyWithImpl<$Res>
    implements _$$_RefreshTokenEntityCopyWith<$Res> {
  __$$_RefreshTokenEntityCopyWithImpl(
      _$_RefreshTokenEntity _value, $Res Function(_$_RefreshTokenEntity) _then)
      : super(_value, (v) => _then(v as _$_RefreshTokenEntity));

  @override
  _$_RefreshTokenEntity get _value => super._value as _$_RefreshTokenEntity;

  @override
  $Res call({
    Object? refresh = freezed,
  }) {
    return _then(_$_RefreshTokenEntity(
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RefreshTokenEntity implements _RefreshTokenEntity {
  const _$_RefreshTokenEntity({required this.refresh});

  @override
  final String refresh;

  @override
  String toString() {
    return 'RefreshTokenEntity(refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RefreshTokenEntity &&
            const DeepCollectionEquality().equals(other.refresh, refresh));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(refresh));

  @JsonKey(ignore: true)
  @override
  _$$_RefreshTokenEntityCopyWith<_$_RefreshTokenEntity> get copyWith =>
      __$$_RefreshTokenEntityCopyWithImpl<_$_RefreshTokenEntity>(
          this, _$identity);
}

abstract class _RefreshTokenEntity implements RefreshTokenEntity {
  const factory _RefreshTokenEntity({required final String refresh}) =
      _$_RefreshTokenEntity;

  @override
  String get refresh;
  @override
  @JsonKey(ignore: true)
  _$$_RefreshTokenEntityCopyWith<_$_RefreshTokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

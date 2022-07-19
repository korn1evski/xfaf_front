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

AccessTokenApiDto _$AccessTokenApiDtoFromJson(Map<String, dynamic> json) {
  return _AccessTokenApiDto.fromJson(json);
}

/// @nodoc
mixin _$AccessTokenApiDto {
  String get access => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccessTokenApiDtoCopyWith<AccessTokenApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessTokenApiDtoCopyWith<$Res> {
  factory $AccessTokenApiDtoCopyWith(
          AccessTokenApiDto value, $Res Function(AccessTokenApiDto) then) =
      _$AccessTokenApiDtoCopyWithImpl<$Res>;
  $Res call({String access});
}

/// @nodoc
class _$AccessTokenApiDtoCopyWithImpl<$Res>
    implements $AccessTokenApiDtoCopyWith<$Res> {
  _$AccessTokenApiDtoCopyWithImpl(this._value, this._then);

  final AccessTokenApiDto _value;
  // ignore: unused_field
  final $Res Function(AccessTokenApiDto) _then;

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
abstract class _$$_AccessTokenApiDtoCopyWith<$Res>
    implements $AccessTokenApiDtoCopyWith<$Res> {
  factory _$$_AccessTokenApiDtoCopyWith(_$_AccessTokenApiDto value,
          $Res Function(_$_AccessTokenApiDto) then) =
      __$$_AccessTokenApiDtoCopyWithImpl<$Res>;
  @override
  $Res call({String access});
}

/// @nodoc
class __$$_AccessTokenApiDtoCopyWithImpl<$Res>
    extends _$AccessTokenApiDtoCopyWithImpl<$Res>
    implements _$$_AccessTokenApiDtoCopyWith<$Res> {
  __$$_AccessTokenApiDtoCopyWithImpl(
      _$_AccessTokenApiDto _value, $Res Function(_$_AccessTokenApiDto) _then)
      : super(_value, (v) => _then(v as _$_AccessTokenApiDto));

  @override
  _$_AccessTokenApiDto get _value => super._value as _$_AccessTokenApiDto;

  @override
  $Res call({
    Object? access = freezed,
  }) {
    return _then(_$_AccessTokenApiDto(
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccessTokenApiDto implements _AccessTokenApiDto {
  const _$_AccessTokenApiDto({required this.access});

  factory _$_AccessTokenApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_AccessTokenApiDtoFromJson(json);

  @override
  final String access;

  @override
  String toString() {
    return 'AccessTokenApiDto(access: $access)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccessTokenApiDto &&
            const DeepCollectionEquality().equals(other.access, access));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(access));

  @JsonKey(ignore: true)
  @override
  _$$_AccessTokenApiDtoCopyWith<_$_AccessTokenApiDto> get copyWith =>
      __$$_AccessTokenApiDtoCopyWithImpl<_$_AccessTokenApiDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccessTokenApiDtoToJson(this);
  }
}

abstract class _AccessTokenApiDto implements AccessTokenApiDto {
  const factory _AccessTokenApiDto({required final String access}) =
      _$_AccessTokenApiDto;

  factory _AccessTokenApiDto.fromJson(Map<String, dynamic> json) =
      _$_AccessTokenApiDto.fromJson;

  @override
  String get access;
  @override
  @JsonKey(ignore: true)
  _$$_AccessTokenApiDtoCopyWith<_$_AccessTokenApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthJWTResponseApiDto _$AuthJWTResponseApiDtoFromJson(
    Map<String, dynamic> json) {
  return _AuthJWTResponseApiDto.fromJson(json);
}

/// @nodoc
mixin _$AuthJWTResponseApiDto {
  String get access => throw _privateConstructorUsedError;
  String get refresh => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthJWTResponseApiDtoCopyWith<AuthJWTResponseApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthJWTResponseApiDtoCopyWith<$Res> {
  factory $AuthJWTResponseApiDtoCopyWith(AuthJWTResponseApiDto value,
          $Res Function(AuthJWTResponseApiDto) then) =
      _$AuthJWTResponseApiDtoCopyWithImpl<$Res>;
  $Res call({String access, String refresh});
}

/// @nodoc
class _$AuthJWTResponseApiDtoCopyWithImpl<$Res>
    implements $AuthJWTResponseApiDtoCopyWith<$Res> {
  _$AuthJWTResponseApiDtoCopyWithImpl(this._value, this._then);

  final AuthJWTResponseApiDto _value;
  // ignore: unused_field
  final $Res Function(AuthJWTResponseApiDto) _then;

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
abstract class _$$_AuthJWTResponseApiDtoCopyWith<$Res>
    implements $AuthJWTResponseApiDtoCopyWith<$Res> {
  factory _$$_AuthJWTResponseApiDtoCopyWith(_$_AuthJWTResponseApiDto value,
          $Res Function(_$_AuthJWTResponseApiDto) then) =
      __$$_AuthJWTResponseApiDtoCopyWithImpl<$Res>;
  @override
  $Res call({String access, String refresh});
}

/// @nodoc
class __$$_AuthJWTResponseApiDtoCopyWithImpl<$Res>
    extends _$AuthJWTResponseApiDtoCopyWithImpl<$Res>
    implements _$$_AuthJWTResponseApiDtoCopyWith<$Res> {
  __$$_AuthJWTResponseApiDtoCopyWithImpl(_$_AuthJWTResponseApiDto _value,
      $Res Function(_$_AuthJWTResponseApiDto) _then)
      : super(_value, (v) => _then(v as _$_AuthJWTResponseApiDto));

  @override
  _$_AuthJWTResponseApiDto get _value =>
      super._value as _$_AuthJWTResponseApiDto;

  @override
  $Res call({
    Object? access = freezed,
    Object? refresh = freezed,
  }) {
    return _then(_$_AuthJWTResponseApiDto(
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
@JsonSerializable()
class _$_AuthJWTResponseApiDto implements _AuthJWTResponseApiDto {
  const _$_AuthJWTResponseApiDto({required this.access, required this.refresh});

  factory _$_AuthJWTResponseApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthJWTResponseApiDtoFromJson(json);

  @override
  final String access;
  @override
  final String refresh;

  @override
  String toString() {
    return 'AuthJWTResponseApiDto(access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthJWTResponseApiDto &&
            const DeepCollectionEquality().equals(other.access, access) &&
            const DeepCollectionEquality().equals(other.refresh, refresh));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(access),
      const DeepCollectionEquality().hash(refresh));

  @JsonKey(ignore: true)
  @override
  _$$_AuthJWTResponseApiDtoCopyWith<_$_AuthJWTResponseApiDto> get copyWith =>
      __$$_AuthJWTResponseApiDtoCopyWithImpl<_$_AuthJWTResponseApiDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthJWTResponseApiDtoToJson(this);
  }
}

abstract class _AuthJWTResponseApiDto implements AuthJWTResponseApiDto {
  const factory _AuthJWTResponseApiDto(
      {required final String access,
      required final String refresh}) = _$_AuthJWTResponseApiDto;

  factory _AuthJWTResponseApiDto.fromJson(Map<String, dynamic> json) =
      _$_AuthJWTResponseApiDto.fromJson;

  @override
  String get access;
  @override
  String get refresh;
  @override
  @JsonKey(ignore: true)
  _$$_AuthJWTResponseApiDtoCopyWith<_$_AuthJWTResponseApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

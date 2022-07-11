// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of user_model;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserApiDto _$UserApiDtoFromJson(Map<String, dynamic> json) {
  return _UserApiDto.fromJson(json);
}

/// @nodoc
mixin _$UserApiDto {
  String get id => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserApiDtoCopyWith<UserApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserApiDtoCopyWith<$Res> {
  factory $UserApiDtoCopyWith(
          UserApiDto value, $Res Function(UserApiDto) then) =
      _$UserApiDtoCopyWithImpl<$Res>;
  $Res call({String id, String firstName, String lastName, String picture});
}

/// @nodoc
class _$UserApiDtoCopyWithImpl<$Res> implements $UserApiDtoCopyWith<$Res> {
  _$UserApiDtoCopyWithImpl(this._value, this._then);

  final UserApiDto _value;
  // ignore: unused_field
  final $Res Function(UserApiDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserApiDtoCopyWith<$Res>
    implements $UserApiDtoCopyWith<$Res> {
  factory _$$_UserApiDtoCopyWith(
          _$_UserApiDto value, $Res Function(_$_UserApiDto) then) =
      __$$_UserApiDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String firstName, String lastName, String picture});
}

/// @nodoc
class __$$_UserApiDtoCopyWithImpl<$Res> extends _$UserApiDtoCopyWithImpl<$Res>
    implements _$$_UserApiDtoCopyWith<$Res> {
  __$$_UserApiDtoCopyWithImpl(
      _$_UserApiDto _value, $Res Function(_$_UserApiDto) _then)
      : super(_value, (v) => _then(v as _$_UserApiDto));

  @override
  _$_UserApiDto get _value => super._value as _$_UserApiDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$_UserApiDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserApiDto implements _UserApiDto {
  _$_UserApiDto(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.picture});

  factory _$_UserApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserApiDtoFromJson(json);

  @override
  final String id;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String picture;

  @override
  String toString() {
    return 'UserApiDto(id: $id, firstName: $firstName, lastName: $lastName, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserApiDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.picture, picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(picture));

  @JsonKey(ignore: true)
  @override
  _$$_UserApiDtoCopyWith<_$_UserApiDto> get copyWith =>
      __$$_UserApiDtoCopyWithImpl<_$_UserApiDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserApiDtoToJson(this);
  }
}

abstract class _UserApiDto implements UserApiDto {
  factory _UserApiDto(
      {required final String id,
      required final String firstName,
      required final String lastName,
      required final String picture}) = _$_UserApiDto;

  factory _UserApiDto.fromJson(Map<String, dynamic> json) =
      _$_UserApiDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get firstName => throw _privateConstructorUsedError;
  @override
  String get lastName => throw _privateConstructorUsedError;
  @override
  String get picture => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserApiDtoCopyWith<_$_UserApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UserResponseApiDto _$UserResponseApiDtoFromJson(Map<String, dynamic> json) {
  return _UserResponseApiDto.fromJson(json);
}

/// @nodoc
mixin _$UserResponseApiDto {
  List<UserApiDto> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserResponseApiDtoCopyWith<UserResponseApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseApiDtoCopyWith<$Res> {
  factory $UserResponseApiDtoCopyWith(
          UserResponseApiDto value, $Res Function(UserResponseApiDto) then) =
      _$UserResponseApiDtoCopyWithImpl<$Res>;
  $Res call({List<UserApiDto> data});
}

/// @nodoc
class _$UserResponseApiDtoCopyWithImpl<$Res>
    implements $UserResponseApiDtoCopyWith<$Res> {
  _$UserResponseApiDtoCopyWithImpl(this._value, this._then);

  final UserResponseApiDto _value;
  // ignore: unused_field
  final $Res Function(UserResponseApiDto) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserApiDto>,
    ));
  }
}

/// @nodoc
abstract class _$$_UserResponseApiDtoCopyWith<$Res>
    implements $UserResponseApiDtoCopyWith<$Res> {
  factory _$$_UserResponseApiDtoCopyWith(_$_UserResponseApiDto value,
          $Res Function(_$_UserResponseApiDto) then) =
      __$$_UserResponseApiDtoCopyWithImpl<$Res>;
  @override
  $Res call({List<UserApiDto> data});
}

/// @nodoc
class __$$_UserResponseApiDtoCopyWithImpl<$Res>
    extends _$UserResponseApiDtoCopyWithImpl<$Res>
    implements _$$_UserResponseApiDtoCopyWith<$Res> {
  __$$_UserResponseApiDtoCopyWithImpl(
      _$_UserResponseApiDto _value, $Res Function(_$_UserResponseApiDto) _then)
      : super(_value, (v) => _then(v as _$_UserResponseApiDto));

  @override
  _$_UserResponseApiDto get _value => super._value as _$_UserResponseApiDto;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_UserResponseApiDto(
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserApiDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserResponseApiDto implements _UserResponseApiDto {
  _$_UserResponseApiDto({required final List<UserApiDto> data}) : _data = data;

  factory _$_UserResponseApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserResponseApiDtoFromJson(json);

  final List<UserApiDto> _data;
  @override
  List<UserApiDto> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UserResponseApiDto(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserResponseApiDto &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_UserResponseApiDtoCopyWith<_$_UserResponseApiDto> get copyWith =>
      __$$_UserResponseApiDtoCopyWithImpl<_$_UserResponseApiDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserResponseApiDtoToJson(this);
  }
}

abstract class _UserResponseApiDto implements UserResponseApiDto {
  factory _UserResponseApiDto({required final List<UserApiDto> data}) =
      _$_UserResponseApiDto;

  factory _UserResponseApiDto.fromJson(Map<String, dynamic> json) =
      _$_UserResponseApiDto.fromJson;

  @override
  List<UserApiDto> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserResponseApiDtoCopyWith<_$_UserResponseApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of profile_entities;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileEntity {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String get sso => throw _privateConstructorUsedError;
  List<String> get keys => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileEntityCopyWith<ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEntityCopyWith<$Res> {
  factory $ProfileEntityCopyWith(
          ProfileEntity value, $Res Function(ProfileEntity) then) =
      _$ProfileEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String email,
      String firstName,
      String lastName,
      String? photo,
      String sso,
      List<String> keys});
}

/// @nodoc
class _$ProfileEntityCopyWithImpl<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  _$ProfileEntityCopyWithImpl(this._value, this._then);

  final ProfileEntity _value;
  // ignore: unused_field
  final $Res Function(ProfileEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? photo = freezed,
    Object? sso = freezed,
    Object? keys = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      sso: sso == freezed
          ? _value.sso
          : sso // ignore: cast_nullable_to_non_nullable
              as String,
      keys: keys == freezed
          ? _value.keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileEntityCopyWith<$Res>
    implements $ProfileEntityCopyWith<$Res> {
  factory _$$_ProfileEntityCopyWith(
          _$_ProfileEntity value, $Res Function(_$_ProfileEntity) then) =
      __$$_ProfileEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String email,
      String firstName,
      String lastName,
      String? photo,
      String sso,
      List<String> keys});
}

/// @nodoc
class __$$_ProfileEntityCopyWithImpl<$Res>
    extends _$ProfileEntityCopyWithImpl<$Res>
    implements _$$_ProfileEntityCopyWith<$Res> {
  __$$_ProfileEntityCopyWithImpl(
      _$_ProfileEntity _value, $Res Function(_$_ProfileEntity) _then)
      : super(_value, (v) => _then(v as _$_ProfileEntity));

  @override
  _$_ProfileEntity get _value => super._value as _$_ProfileEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? photo = freezed,
    Object? sso = freezed,
    Object? keys = freezed,
  }) {
    return _then(_$_ProfileEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      sso: sso == freezed
          ? _value.sso
          : sso // ignore: cast_nullable_to_non_nullable
              as String,
      keys: keys == freezed
          ? _value._keys
          : keys // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ProfileEntity extends _ProfileEntity {
  _$_ProfileEntity(
      {required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      this.photo,
      required this.sso,
      required final List<String> keys})
      : _keys = keys,
        super._();

  @override
  final String id;
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String? photo;
  @override
  final String sso;
  final List<String> _keys;
  @override
  List<String> get keys {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keys);
  }

  @override
  String toString() {
    return 'ProfileEntity(id: $id, email: $email, firstName: $firstName, lastName: $lastName, photo: $photo, sso: $sso, keys: $keys)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.sso, sso) &&
            const DeepCollectionEquality().equals(other._keys, _keys));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(sso),
      const DeepCollectionEquality().hash(_keys));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileEntityCopyWith<_$_ProfileEntity> get copyWith =>
      __$$_ProfileEntityCopyWithImpl<_$_ProfileEntity>(this, _$identity);
}

abstract class _ProfileEntity extends ProfileEntity {
  factory _ProfileEntity(
      {required final String id,
      required final String email,
      required final String firstName,
      required final String lastName,
      final String? photo,
      required final String sso,
      required final List<String> keys}) = _$_ProfileEntity;
  _ProfileEntity._() : super._();

  @override
  String get id;
  @override
  String get email;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String? get photo;
  @override
  String get sso;
  @override
  List<String> get keys;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileEntityCopyWith<_$_ProfileEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

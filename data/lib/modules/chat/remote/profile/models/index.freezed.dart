// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of profile_models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileApiDto _$ProfileApiDtoFromJson(Map<String, dynamic> json) {
  return _ProfileApiDto.fromJson(json);
}

/// @nodoc
mixin _$ProfileApiDto {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get photo => throw _privateConstructorUsedError;
  String get sso => throw _privateConstructorUsedError;
  List<String> get keys => throw _privateConstructorUsedError;
  Notifications? get notifications => throw _privateConstructorUsedError;
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'edited_timestamp')
  String? get editedTimestamp => throw _privateConstructorUsedError;
  Settings? get settings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileApiDtoCopyWith<ProfileApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileApiDtoCopyWith<$Res> {
  factory $ProfileApiDtoCopyWith(
          ProfileApiDto value, $Res Function(ProfileApiDto) then) =
      _$ProfileApiDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String email,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? phone,
      String? photo,
      String sso,
      List<String> keys,
      Notifications? notifications,
      String? timestamp,
      @JsonKey(name: 'edited_timestamp') String? editedTimestamp,
      Settings? settings});
}

/// @nodoc
class _$ProfileApiDtoCopyWithImpl<$Res>
    implements $ProfileApiDtoCopyWith<$Res> {
  _$ProfileApiDtoCopyWithImpl(this._value, this._then);

  final ProfileApiDto _value;
  // ignore: unused_field
  final $Res Function(ProfileApiDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? photo = freezed,
    Object? sso = freezed,
    Object? keys = freezed,
    Object? notifications = freezed,
    Object? timestamp = freezed,
    Object? editedTimestamp = freezed,
    Object? settings = freezed,
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
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
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
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as Notifications?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileApiDtoCopyWith<$Res>
    implements $ProfileApiDtoCopyWith<$Res> {
  factory _$$_ProfileApiDtoCopyWith(
          _$_ProfileApiDto value, $Res Function(_$_ProfileApiDto) then) =
      __$$_ProfileApiDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String email,
      @JsonKey(name: 'first_name') String firstName,
      @JsonKey(name: 'last_name') String lastName,
      String? phone,
      String? photo,
      String sso,
      List<String> keys,
      Notifications? notifications,
      String? timestamp,
      @JsonKey(name: 'edited_timestamp') String? editedTimestamp,
      Settings? settings});
}

/// @nodoc
class __$$_ProfileApiDtoCopyWithImpl<$Res>
    extends _$ProfileApiDtoCopyWithImpl<$Res>
    implements _$$_ProfileApiDtoCopyWith<$Res> {
  __$$_ProfileApiDtoCopyWithImpl(
      _$_ProfileApiDto _value, $Res Function(_$_ProfileApiDto) _then)
      : super(_value, (v) => _then(v as _$_ProfileApiDto));

  @override
  _$_ProfileApiDto get _value => super._value as _$_ProfileApiDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? photo = freezed,
    Object? sso = freezed,
    Object? keys = freezed,
    Object? notifications = freezed,
    Object? timestamp = freezed,
    Object? editedTimestamp = freezed,
    Object? settings = freezed,
  }) {
    return _then(_$_ProfileApiDto(
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
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
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
      notifications: notifications == freezed
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as Notifications?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      settings: settings == freezed
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as Settings?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileApiDto implements _ProfileApiDto {
  _$_ProfileApiDto(
      {@JsonKey(name: '_id') required this.id,
      required this.email,
      @JsonKey(name: 'first_name') required this.firstName,
      @JsonKey(name: 'last_name') required this.lastName,
      this.phone,
      this.photo,
      required this.sso,
      required final List<String> keys,
      this.notifications,
      this.timestamp,
      @JsonKey(name: 'edited_timestamp') this.editedTimestamp,
      this.settings})
      : _keys = keys;

  factory _$_ProfileApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileApiDtoFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String email;
  @override
  @JsonKey(name: 'first_name')
  final String firstName;
  @override
  @JsonKey(name: 'last_name')
  final String lastName;
  @override
  final String? phone;
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
  final Notifications? notifications;
  @override
  final String? timestamp;
  @override
  @JsonKey(name: 'edited_timestamp')
  final String? editedTimestamp;
  @override
  final Settings? settings;

  @override
  String toString() {
    return 'ProfileApiDto(id: $id, email: $email, firstName: $firstName, lastName: $lastName, phone: $phone, photo: $photo, sso: $sso, keys: $keys, notifications: $notifications, timestamp: $timestamp, editedTimestamp: $editedTimestamp, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileApiDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.photo, photo) &&
            const DeepCollectionEquality().equals(other.sso, sso) &&
            const DeepCollectionEquality().equals(other._keys, _keys) &&
            const DeepCollectionEquality()
                .equals(other.notifications, notifications) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.editedTimestamp, editedTimestamp) &&
            const DeepCollectionEquality().equals(other.settings, settings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(photo),
      const DeepCollectionEquality().hash(sso),
      const DeepCollectionEquality().hash(_keys),
      const DeepCollectionEquality().hash(notifications),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(editedTimestamp),
      const DeepCollectionEquality().hash(settings));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileApiDtoCopyWith<_$_ProfileApiDto> get copyWith =>
      __$$_ProfileApiDtoCopyWithImpl<_$_ProfileApiDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileApiDtoToJson(this);
  }
}

abstract class _ProfileApiDto implements ProfileApiDto {
  factory _ProfileApiDto(
      {@JsonKey(name: '_id') required final String id,
      required final String email,
      @JsonKey(name: 'first_name') required final String firstName,
      @JsonKey(name: 'last_name') required final String lastName,
      final String? phone,
      final String? photo,
      required final String sso,
      required final List<String> keys,
      final Notifications? notifications,
      final String? timestamp,
      @JsonKey(name: 'edited_timestamp') final String? editedTimestamp,
      final Settings? settings}) = _$_ProfileApiDto;

  factory _ProfileApiDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileApiDto.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'first_name')
  String get firstName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'last_name')
  String get lastName => throw _privateConstructorUsedError;
  @override
  String? get phone => throw _privateConstructorUsedError;
  @override
  String? get photo => throw _privateConstructorUsedError;
  @override
  String get sso => throw _privateConstructorUsedError;
  @override
  List<String> get keys => throw _privateConstructorUsedError;
  @override
  Notifications? get notifications => throw _privateConstructorUsedError;
  @override
  String? get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'edited_timestamp')
  String? get editedTimestamp => throw _privateConstructorUsedError;
  @override
  Settings? get settings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileApiDtoCopyWith<_$_ProfileApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

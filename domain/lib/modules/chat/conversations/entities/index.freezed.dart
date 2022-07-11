// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of conversations_entities;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConversationEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get pictureUrl => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  bool get public => throw _privateConstructorUsedError;
  int get unread => throw _privateConstructorUsedError;
  List<ProfileEntity> get members => throw _privateConstructorUsedError;
  int get membersCount => throw _privateConstructorUsedError;
  ProfileEntity get owner => throw _privateConstructorUsedError;
  EmbedMessageEntity? get message => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get editedTimestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationEntityCopyWith<ConversationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEntityCopyWith<$Res> {
  factory $ConversationEntityCopyWith(
          ConversationEntity value, $Res Function(ConversationEntity) then) =
      _$ConversationEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String pictureUrl,
      int type,
      bool public,
      int unread,
      List<ProfileEntity> members,
      int membersCount,
      ProfileEntity owner,
      EmbedMessageEntity? message,
      String timestamp,
      String editedTimestamp});

  $ProfileEntityCopyWith<$Res> get owner;
  $EmbedMessageEntityCopyWith<$Res>? get message;
}

/// @nodoc
class _$ConversationEntityCopyWithImpl<$Res>
    implements $ConversationEntityCopyWith<$Res> {
  _$ConversationEntityCopyWithImpl(this._value, this._then);

  final ConversationEntity _value;
  // ignore: unused_field
  final $Res Function(ConversationEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pictureUrl = freezed,
    Object? type = freezed,
    Object? public = freezed,
    Object? unread = freezed,
    Object? members = freezed,
    Object? membersCount = freezed,
    Object? owner = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ProfileEntity>,
      membersCount: membersCount == freezed
          ? _value.membersCount
          : membersCount // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as EmbedMessageEntity?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ProfileEntityCopyWith<$Res> get owner {
    return $ProfileEntityCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }

  @override
  $EmbedMessageEntityCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $EmbedMessageEntityCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
abstract class _$$_ConversationEntityCopyWith<$Res>
    implements $ConversationEntityCopyWith<$Res> {
  factory _$$_ConversationEntityCopyWith(_$_ConversationEntity value,
          $Res Function(_$_ConversationEntity) then) =
      __$$_ConversationEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String pictureUrl,
      int type,
      bool public,
      int unread,
      List<ProfileEntity> members,
      int membersCount,
      ProfileEntity owner,
      EmbedMessageEntity? message,
      String timestamp,
      String editedTimestamp});

  @override
  $ProfileEntityCopyWith<$Res> get owner;
  @override
  $EmbedMessageEntityCopyWith<$Res>? get message;
}

/// @nodoc
class __$$_ConversationEntityCopyWithImpl<$Res>
    extends _$ConversationEntityCopyWithImpl<$Res>
    implements _$$_ConversationEntityCopyWith<$Res> {
  __$$_ConversationEntityCopyWithImpl(
      _$_ConversationEntity _value, $Res Function(_$_ConversationEntity) _then)
      : super(_value, (v) => _then(v as _$_ConversationEntity));

  @override
  _$_ConversationEntity get _value => super._value as _$_ConversationEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pictureUrl = freezed,
    Object? type = freezed,
    Object? public = freezed,
    Object? unread = freezed,
    Object? members = freezed,
    Object? membersCount = freezed,
    Object? owner = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_$_ConversationEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ProfileEntity>,
      membersCount: membersCount == freezed
          ? _value.membersCount
          : membersCount // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as EmbedMessageEntity?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConversationEntity implements _ConversationEntity {
  _$_ConversationEntity(
      {required this.id,
      required this.name,
      required this.pictureUrl,
      required this.type,
      required this.public,
      required this.unread,
      required final List<ProfileEntity> members,
      required this.membersCount,
      required this.owner,
      this.message,
      required this.timestamp,
      required this.editedTimestamp})
      : _members = members;

  @override
  final String id;
  @override
  final String name;
  @override
  final String pictureUrl;
  @override
  final int type;
  @override
  final bool public;
  @override
  final int unread;
  final List<ProfileEntity> _members;
  @override
  List<ProfileEntity> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final int membersCount;
  @override
  final ProfileEntity owner;
  @override
  final EmbedMessageEntity? message;
  @override
  final String timestamp;
  @override
  final String editedTimestamp;

  @override
  String toString() {
    return 'ConversationEntity(id: $id, name: $name, pictureUrl: $pictureUrl, type: $type, public: $public, unread: $unread, members: $members, membersCount: $membersCount, owner: $owner, message: $message, timestamp: $timestamp, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.pictureUrl, pictureUrl) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.public, public) &&
            const DeepCollectionEquality().equals(other.unread, unread) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality()
                .equals(other.membersCount, membersCount) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.editedTimestamp, editedTimestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pictureUrl),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(public),
      const DeepCollectionEquality().hash(unread),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(membersCount),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(editedTimestamp));

  @JsonKey(ignore: true)
  @override
  _$$_ConversationEntityCopyWith<_$_ConversationEntity> get copyWith =>
      __$$_ConversationEntityCopyWithImpl<_$_ConversationEntity>(
          this, _$identity);
}

abstract class _ConversationEntity implements ConversationEntity {
  factory _ConversationEntity(
      {required final String id,
      required final String name,
      required final String pictureUrl,
      required final int type,
      required final bool public,
      required final int unread,
      required final List<ProfileEntity> members,
      required final int membersCount,
      required final ProfileEntity owner,
      final EmbedMessageEntity? message,
      required final String timestamp,
      required final String editedTimestamp}) = _$_ConversationEntity;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get pictureUrl => throw _privateConstructorUsedError;
  @override
  int get type => throw _privateConstructorUsedError;
  @override
  bool get public => throw _privateConstructorUsedError;
  @override
  int get unread => throw _privateConstructorUsedError;
  @override
  List<ProfileEntity> get members => throw _privateConstructorUsedError;
  @override
  int get membersCount => throw _privateConstructorUsedError;
  @override
  ProfileEntity get owner => throw _privateConstructorUsedError;
  @override
  EmbedMessageEntity? get message => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  String get editedTimestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationEntityCopyWith<_$_ConversationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConversationInsideMessageEntity {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture_url')
  String get pictureUrl => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  bool get public => throw _privateConstructorUsedError;
  List<String> get members => throw _privateConstructorUsedError;
  int get unread => throw _privateConstructorUsedError;
  @JsonKey(name: 'members_count')
  int get membersCount => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationInsideMessageEntityCopyWith<ConversationInsideMessageEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationInsideMessageEntityCopyWith<$Res> {
  factory $ConversationInsideMessageEntityCopyWith(
          ConversationInsideMessageEntity value,
          $Res Function(ConversationInsideMessageEntity) then) =
      _$ConversationInsideMessageEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      @JsonKey(name: 'picture_url') String pictureUrl,
      int type,
      bool public,
      List<String> members,
      int unread,
      @JsonKey(name: 'members_count') int membersCount,
      String owner,
      String? message,
      String timestamp,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});
}

/// @nodoc
class _$ConversationInsideMessageEntityCopyWithImpl<$Res>
    implements $ConversationInsideMessageEntityCopyWith<$Res> {
  _$ConversationInsideMessageEntityCopyWithImpl(this._value, this._then);

  final ConversationInsideMessageEntity _value;
  // ignore: unused_field
  final $Res Function(ConversationInsideMessageEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pictureUrl = freezed,
    Object? type = freezed,
    Object? public = freezed,
    Object? members = freezed,
    Object? unread = freezed,
    Object? membersCount = freezed,
    Object? owner = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      membersCount: membersCount == freezed
          ? _value.membersCount
          : membersCount // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ConversationInsideMessageEntityCopyWith<$Res>
    implements $ConversationInsideMessageEntityCopyWith<$Res> {
  factory _$$_ConversationInsideMessageEntityCopyWith(
          _$_ConversationInsideMessageEntity value,
          $Res Function(_$_ConversationInsideMessageEntity) then) =
      __$$_ConversationInsideMessageEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      @JsonKey(name: 'picture_url') String pictureUrl,
      int type,
      bool public,
      List<String> members,
      int unread,
      @JsonKey(name: 'members_count') int membersCount,
      String owner,
      String? message,
      String timestamp,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});
}

/// @nodoc
class __$$_ConversationInsideMessageEntityCopyWithImpl<$Res>
    extends _$ConversationInsideMessageEntityCopyWithImpl<$Res>
    implements _$$_ConversationInsideMessageEntityCopyWith<$Res> {
  __$$_ConversationInsideMessageEntityCopyWithImpl(
      _$_ConversationInsideMessageEntity _value,
      $Res Function(_$_ConversationInsideMessageEntity) _then)
      : super(_value, (v) => _then(v as _$_ConversationInsideMessageEntity));

  @override
  _$_ConversationInsideMessageEntity get _value =>
      super._value as _$_ConversationInsideMessageEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pictureUrl = freezed,
    Object? type = freezed,
    Object? public = freezed,
    Object? members = freezed,
    Object? unread = freezed,
    Object? membersCount = freezed,
    Object? owner = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_$_ConversationInsideMessageEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<String>,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int,
      membersCount: membersCount == freezed
          ? _value.membersCount
          : membersCount // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConversationInsideMessageEntity
    implements _ConversationInsideMessageEntity {
  _$_ConversationInsideMessageEntity(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      @JsonKey(name: 'picture_url') required this.pictureUrl,
      required this.type,
      required this.public,
      required final List<String> members,
      required this.unread,
      @JsonKey(name: 'members_count') required this.membersCount,
      required this.owner,
      this.message,
      required this.timestamp,
      @JsonKey(name: 'edited_timestamp') required this.editedTimestamp})
      : _members = members;

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  @JsonKey(name: 'picture_url')
  final String pictureUrl;
  @override
  final int type;
  @override
  final bool public;
  final List<String> _members;
  @override
  List<String> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final int unread;
  @override
  @JsonKey(name: 'members_count')
  final int membersCount;
  @override
  final String owner;
  @override
  final String? message;
  @override
  final String timestamp;
  @override
  @JsonKey(name: 'edited_timestamp')
  final String editedTimestamp;

  @override
  String toString() {
    return 'ConversationInsideMessageEntity(id: $id, name: $name, pictureUrl: $pictureUrl, type: $type, public: $public, members: $members, unread: $unread, membersCount: $membersCount, owner: $owner, message: $message, timestamp: $timestamp, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationInsideMessageEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.pictureUrl, pictureUrl) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.public, public) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other.unread, unread) &&
            const DeepCollectionEquality()
                .equals(other.membersCount, membersCount) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.editedTimestamp, editedTimestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pictureUrl),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(public),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(unread),
      const DeepCollectionEquality().hash(membersCount),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(editedTimestamp));

  @JsonKey(ignore: true)
  @override
  _$$_ConversationInsideMessageEntityCopyWith<
          _$_ConversationInsideMessageEntity>
      get copyWith => __$$_ConversationInsideMessageEntityCopyWithImpl<
          _$_ConversationInsideMessageEntity>(this, _$identity);
}

abstract class _ConversationInsideMessageEntity
    implements ConversationInsideMessageEntity {
  factory _ConversationInsideMessageEntity(
          {@JsonKey(name: '_id')
              required final String id,
          required final String name,
          @JsonKey(name: 'picture_url')
              required final String pictureUrl,
          required final int type,
          required final bool public,
          required final List<String> members,
          required final int unread,
          @JsonKey(name: 'members_count')
              required final int membersCount,
          required final String owner,
          final String? message,
          required final String timestamp,
          @JsonKey(name: 'edited_timestamp')
              required final String editedTimestamp}) =
      _$_ConversationInsideMessageEntity;

  @override
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'picture_url')
  String get pictureUrl => throw _privateConstructorUsedError;
  @override
  int get type => throw _privateConstructorUsedError;
  @override
  bool get public => throw _privateConstructorUsedError;
  @override
  List<String> get members => throw _privateConstructorUsedError;
  @override
  int get unread => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'members_count')
  int get membersCount => throw _privateConstructorUsedError;
  @override
  String get owner => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationInsideMessageEntityCopyWith<
          _$_ConversationInsideMessageEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConversationWebSocketEntity {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get pictureUrl => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  bool get public => throw _privateConstructorUsedError;
  List<ProfileEntity> get members => throw _privateConstructorUsedError;
  int? get unread => throw _privateConstructorUsedError;
  int get membersCount => throw _privateConstructorUsedError;
  ProfileEntity get owner => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get editedTimestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationWebSocketEntityCopyWith<ConversationWebSocketEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationWebSocketEntityCopyWith<$Res> {
  factory $ConversationWebSocketEntityCopyWith(
          ConversationWebSocketEntity value,
          $Res Function(ConversationWebSocketEntity) then) =
      _$ConversationWebSocketEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String pictureUrl,
      int type,
      bool public,
      List<ProfileEntity> members,
      int? unread,
      int membersCount,
      ProfileEntity owner,
      String? message,
      String timestamp,
      String editedTimestamp});

  $ProfileEntityCopyWith<$Res> get owner;
}

/// @nodoc
class _$ConversationWebSocketEntityCopyWithImpl<$Res>
    implements $ConversationWebSocketEntityCopyWith<$Res> {
  _$ConversationWebSocketEntityCopyWithImpl(this._value, this._then);

  final ConversationWebSocketEntity _value;
  // ignore: unused_field
  final $Res Function(ConversationWebSocketEntity) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pictureUrl = freezed,
    Object? type = freezed,
    Object? public = freezed,
    Object? members = freezed,
    Object? unread = freezed,
    Object? membersCount = freezed,
    Object? owner = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ProfileEntity>,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int?,
      membersCount: membersCount == freezed
          ? _value.membersCount
          : membersCount // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ProfileEntityCopyWith<$Res> get owner {
    return $ProfileEntityCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$$_ConversationWebSocketEntityCopyWith<$Res>
    implements $ConversationWebSocketEntityCopyWith<$Res> {
  factory _$$_ConversationWebSocketEntityCopyWith(
          _$_ConversationWebSocketEntity value,
          $Res Function(_$_ConversationWebSocketEntity) then) =
      __$$_ConversationWebSocketEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String pictureUrl,
      int type,
      bool public,
      List<ProfileEntity> members,
      int? unread,
      int membersCount,
      ProfileEntity owner,
      String? message,
      String timestamp,
      String editedTimestamp});

  @override
  $ProfileEntityCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_ConversationWebSocketEntityCopyWithImpl<$Res>
    extends _$ConversationWebSocketEntityCopyWithImpl<$Res>
    implements _$$_ConversationWebSocketEntityCopyWith<$Res> {
  __$$_ConversationWebSocketEntityCopyWithImpl(
      _$_ConversationWebSocketEntity _value,
      $Res Function(_$_ConversationWebSocketEntity) _then)
      : super(_value, (v) => _then(v as _$_ConversationWebSocketEntity));

  @override
  _$_ConversationWebSocketEntity get _value =>
      super._value as _$_ConversationWebSocketEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? pictureUrl = freezed,
    Object? type = freezed,
    Object? public = freezed,
    Object? members = freezed,
    Object? unread = freezed,
    Object? membersCount = freezed,
    Object? owner = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_$_ConversationWebSocketEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: pictureUrl == freezed
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      public: public == freezed
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ProfileEntity>,
      unread: unread == freezed
          ? _value.unread
          : unread // ignore: cast_nullable_to_non_nullable
              as int?,
      membersCount: membersCount == freezed
          ? _value.membersCount
          : membersCount // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConversationWebSocketEntity implements _ConversationWebSocketEntity {
  _$_ConversationWebSocketEntity(
      {required this.id,
      required this.name,
      required this.pictureUrl,
      required this.type,
      required this.public,
      required final List<ProfileEntity> members,
      this.unread,
      required this.membersCount,
      required this.owner,
      this.message,
      required this.timestamp,
      required this.editedTimestamp})
      : _members = members;

  @override
  final String id;
  @override
  final String name;
  @override
  final String pictureUrl;
  @override
  final int type;
  @override
  final bool public;
  final List<ProfileEntity> _members;
  @override
  List<ProfileEntity> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final int? unread;
  @override
  final int membersCount;
  @override
  final ProfileEntity owner;
  @override
  final String? message;
  @override
  final String timestamp;
  @override
  final String editedTimestamp;

  @override
  String toString() {
    return 'ConversationWebSocketEntity(id: $id, name: $name, pictureUrl: $pictureUrl, type: $type, public: $public, members: $members, unread: $unread, membersCount: $membersCount, owner: $owner, message: $message, timestamp: $timestamp, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationWebSocketEntity &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.pictureUrl, pictureUrl) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.public, public) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other.unread, unread) &&
            const DeepCollectionEquality()
                .equals(other.membersCount, membersCount) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.editedTimestamp, editedTimestamp));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(pictureUrl),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(public),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(unread),
      const DeepCollectionEquality().hash(membersCount),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(editedTimestamp));

  @JsonKey(ignore: true)
  @override
  _$$_ConversationWebSocketEntityCopyWith<_$_ConversationWebSocketEntity>
      get copyWith => __$$_ConversationWebSocketEntityCopyWithImpl<
          _$_ConversationWebSocketEntity>(this, _$identity);
}

abstract class _ConversationWebSocketEntity
    implements ConversationWebSocketEntity {
  factory _ConversationWebSocketEntity(
      {required final String id,
      required final String name,
      required final String pictureUrl,
      required final int type,
      required final bool public,
      required final List<ProfileEntity> members,
      final int? unread,
      required final int membersCount,
      required final ProfileEntity owner,
      final String? message,
      required final String timestamp,
      required final String editedTimestamp}) = _$_ConversationWebSocketEntity;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get pictureUrl => throw _privateConstructorUsedError;
  @override
  int get type => throw _privateConstructorUsedError;
  @override
  bool get public => throw _privateConstructorUsedError;
  @override
  List<ProfileEntity> get members => throw _privateConstructorUsedError;
  @override
  int? get unread => throw _privateConstructorUsedError;
  @override
  int get membersCount => throw _privateConstructorUsedError;
  @override
  ProfileEntity get owner => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  String get editedTimestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationWebSocketEntityCopyWith<_$_ConversationWebSocketEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConversationEventEntity {
  String get event => throw _privateConstructorUsedError;
  ConversationWebSocketEntity get conversation =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConversationEventEntityCopyWith<ConversationEventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEventEntityCopyWith<$Res> {
  factory $ConversationEventEntityCopyWith(ConversationEventEntity value,
          $Res Function(ConversationEventEntity) then) =
      _$ConversationEventEntityCopyWithImpl<$Res>;
  $Res call({String event, ConversationWebSocketEntity conversation});

  $ConversationWebSocketEntityCopyWith<$Res> get conversation;
}

/// @nodoc
class _$ConversationEventEntityCopyWithImpl<$Res>
    implements $ConversationEventEntityCopyWith<$Res> {
  _$ConversationEventEntityCopyWithImpl(this._value, this._then);

  final ConversationEventEntity _value;
  // ignore: unused_field
  final $Res Function(ConversationEventEntity) _then;

  @override
  $Res call({
    Object? event = freezed,
    Object? conversation = freezed,
  }) {
    return _then(_value.copyWith(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      conversation: conversation == freezed
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationWebSocketEntity,
    ));
  }

  @override
  $ConversationWebSocketEntityCopyWith<$Res> get conversation {
    return $ConversationWebSocketEntityCopyWith<$Res>(_value.conversation,
        (value) {
      return _then(_value.copyWith(conversation: value));
    });
  }
}

/// @nodoc
abstract class _$$_ConversationEventEntityCopyWith<$Res>
    implements $ConversationEventEntityCopyWith<$Res> {
  factory _$$_ConversationEventEntityCopyWith(_$_ConversationEventEntity value,
          $Res Function(_$_ConversationEventEntity) then) =
      __$$_ConversationEventEntityCopyWithImpl<$Res>;
  @override
  $Res call({String event, ConversationWebSocketEntity conversation});

  @override
  $ConversationWebSocketEntityCopyWith<$Res> get conversation;
}

/// @nodoc
class __$$_ConversationEventEntityCopyWithImpl<$Res>
    extends _$ConversationEventEntityCopyWithImpl<$Res>
    implements _$$_ConversationEventEntityCopyWith<$Res> {
  __$$_ConversationEventEntityCopyWithImpl(_$_ConversationEventEntity _value,
      $Res Function(_$_ConversationEventEntity) _then)
      : super(_value, (v) => _then(v as _$_ConversationEventEntity));

  @override
  _$_ConversationEventEntity get _value =>
      super._value as _$_ConversationEventEntity;

  @override
  $Res call({
    Object? event = freezed,
    Object? conversation = freezed,
  }) {
    return _then(_$_ConversationEventEntity(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      conversation: conversation == freezed
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationWebSocketEntity,
    ));
  }
}

/// @nodoc

class _$_ConversationEventEntity implements _ConversationEventEntity {
  _$_ConversationEventEntity({required this.event, required this.conversation});

  @override
  final String event;
  @override
  final ConversationWebSocketEntity conversation;

  @override
  String toString() {
    return 'ConversationEventEntity(event: $event, conversation: $conversation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationEventEntity &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality()
                .equals(other.conversation, conversation));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(conversation));

  @JsonKey(ignore: true)
  @override
  _$$_ConversationEventEntityCopyWith<_$_ConversationEventEntity>
      get copyWith =>
          __$$_ConversationEventEntityCopyWithImpl<_$_ConversationEventEntity>(
              this, _$identity);
}

abstract class _ConversationEventEntity implements ConversationEventEntity {
  factory _ConversationEventEntity(
          {required final String event,
          required final ConversationWebSocketEntity conversation}) =
      _$_ConversationEventEntity;

  @override
  String get event => throw _privateConstructorUsedError;
  @override
  ConversationWebSocketEntity get conversation =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationEventEntityCopyWith<_$_ConversationEventEntity>
      get copyWith => throw _privateConstructorUsedError;
}

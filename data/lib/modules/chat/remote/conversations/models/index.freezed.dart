// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of conversations_models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConversationApiDto _$ConversationApiDtoFromJson(Map<String, dynamic> json) {
  return _ConversationApiDto.fromJson(json);
}

/// @nodoc
mixin _$ConversationApiDto {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture_url')
  String get pictureUrl => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  bool get public => throw _privateConstructorUsedError;
  List<ProfileApiDto> get members => throw _privateConstructorUsedError;
  int get unread => throw _privateConstructorUsedError;
  @JsonKey(name: 'members_count')
  int get membersCount => throw _privateConstructorUsedError;
  ProfileApiDto get owner => throw _privateConstructorUsedError;
  EmbedMessageApiDto? get message => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationApiDtoCopyWith<ConversationApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationApiDtoCopyWith<$Res> {
  factory $ConversationApiDtoCopyWith(
          ConversationApiDto value, $Res Function(ConversationApiDto) then) =
      _$ConversationApiDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      @JsonKey(name: 'picture_url') String pictureUrl,
      int type,
      bool public,
      List<ProfileApiDto> members,
      int unread,
      @JsonKey(name: 'members_count') int membersCount,
      ProfileApiDto owner,
      EmbedMessageApiDto? message,
      String timestamp,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  $ProfileApiDtoCopyWith<$Res> get owner;
  $EmbedMessageApiDtoCopyWith<$Res>? get message;
}

/// @nodoc
class _$ConversationApiDtoCopyWithImpl<$Res>
    implements $ConversationApiDtoCopyWith<$Res> {
  _$ConversationApiDtoCopyWithImpl(this._value, this._then);

  final ConversationApiDto _value;
  // ignore: unused_field
  final $Res Function(ConversationApiDto) _then;

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
              as List<ProfileApiDto>,
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
              as ProfileApiDto,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as EmbedMessageApiDto?,
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
  $ProfileApiDtoCopyWith<$Res> get owner {
    return $ProfileApiDtoCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }

  @override
  $EmbedMessageApiDtoCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $EmbedMessageApiDtoCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value));
    });
  }
}

/// @nodoc
abstract class _$$_ConversationApiDtoCopyWith<$Res>
    implements $ConversationApiDtoCopyWith<$Res> {
  factory _$$_ConversationApiDtoCopyWith(_$_ConversationApiDto value,
          $Res Function(_$_ConversationApiDto) then) =
      __$$_ConversationApiDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      @JsonKey(name: 'picture_url') String pictureUrl,
      int type,
      bool public,
      List<ProfileApiDto> members,
      int unread,
      @JsonKey(name: 'members_count') int membersCount,
      ProfileApiDto owner,
      EmbedMessageApiDto? message,
      String timestamp,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  @override
  $ProfileApiDtoCopyWith<$Res> get owner;
  @override
  $EmbedMessageApiDtoCopyWith<$Res>? get message;
}

/// @nodoc
class __$$_ConversationApiDtoCopyWithImpl<$Res>
    extends _$ConversationApiDtoCopyWithImpl<$Res>
    implements _$$_ConversationApiDtoCopyWith<$Res> {
  __$$_ConversationApiDtoCopyWithImpl(
      _$_ConversationApiDto _value, $Res Function(_$_ConversationApiDto) _then)
      : super(_value, (v) => _then(v as _$_ConversationApiDto));

  @override
  _$_ConversationApiDto get _value => super._value as _$_ConversationApiDto;

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
    return _then(_$_ConversationApiDto(
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
              as List<ProfileApiDto>,
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
              as ProfileApiDto,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as EmbedMessageApiDto?,
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
@JsonSerializable()
class _$_ConversationApiDto implements _ConversationApiDto {
  _$_ConversationApiDto(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      @JsonKey(name: 'picture_url') required this.pictureUrl,
      required this.type,
      required this.public,
      required final List<ProfileApiDto> members,
      required this.unread,
      @JsonKey(name: 'members_count') required this.membersCount,
      required this.owner,
      this.message,
      required this.timestamp,
      @JsonKey(name: 'edited_timestamp') required this.editedTimestamp})
      : _members = members;

  factory _$_ConversationApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationApiDtoFromJson(json);

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
  final List<ProfileApiDto> _members;
  @override
  List<ProfileApiDto> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final int unread;
  @override
  @JsonKey(name: 'members_count')
  final int membersCount;
  @override
  final ProfileApiDto owner;
  @override
  final EmbedMessageApiDto? message;
  @override
  final String timestamp;
  @override
  @JsonKey(name: 'edited_timestamp')
  final String editedTimestamp;

  @override
  String toString() {
    return 'ConversationApiDto(id: $id, name: $name, pictureUrl: $pictureUrl, type: $type, public: $public, members: $members, unread: $unread, membersCount: $membersCount, owner: $owner, message: $message, timestamp: $timestamp, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationApiDto &&
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

  @JsonKey(ignore: true)
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
  _$$_ConversationApiDtoCopyWith<_$_ConversationApiDto> get copyWith =>
      __$$_ConversationApiDtoCopyWithImpl<_$_ConversationApiDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationApiDtoToJson(this);
  }
}

abstract class _ConversationApiDto implements ConversationApiDto {
  factory _ConversationApiDto(
      {@JsonKey(name: '_id')
          required final String id,
      required final String name,
      @JsonKey(name: 'picture_url')
          required final String pictureUrl,
      required final int type,
      required final bool public,
      required final List<ProfileApiDto> members,
      required final int unread,
      @JsonKey(name: 'members_count')
          required final int membersCount,
      required final ProfileApiDto owner,
      final EmbedMessageApiDto? message,
      required final String timestamp,
      @JsonKey(name: 'edited_timestamp')
          required final String editedTimestamp}) = _$_ConversationApiDto;

  factory _ConversationApiDto.fromJson(Map<String, dynamic> json) =
      _$_ConversationApiDto.fromJson;

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
  List<ProfileApiDto> get members => throw _privateConstructorUsedError;
  @override
  int get unread => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'members_count')
  int get membersCount => throw _privateConstructorUsedError;
  @override
  ProfileApiDto get owner => throw _privateConstructorUsedError;
  @override
  EmbedMessageApiDto? get message => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationApiDtoCopyWith<_$_ConversationApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ConversationEventApiDto _$ConversationEventApiDtoFromJson(
    Map<String, dynamic> json) {
  return _ConversationEventApiDto.fromJson(json);
}

/// @nodoc
mixin _$ConversationEventApiDto {
  String get event => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  ConversationWebSocketApiDto get conversation =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationEventApiDtoCopyWith<ConversationEventApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationEventApiDtoCopyWith<$Res> {
  factory $ConversationEventApiDtoCopyWith(ConversationEventApiDto value,
          $Res Function(ConversationEventApiDto) then) =
      _$ConversationEventApiDtoCopyWithImpl<$Res>;
  $Res call(
      {String event,
      @JsonKey(name: 'data') ConversationWebSocketApiDto conversation});

  $ConversationWebSocketApiDtoCopyWith<$Res> get conversation;
}

/// @nodoc
class _$ConversationEventApiDtoCopyWithImpl<$Res>
    implements $ConversationEventApiDtoCopyWith<$Res> {
  _$ConversationEventApiDtoCopyWithImpl(this._value, this._then);

  final ConversationEventApiDto _value;
  // ignore: unused_field
  final $Res Function(ConversationEventApiDto) _then;

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
              as ConversationWebSocketApiDto,
    ));
  }

  @override
  $ConversationWebSocketApiDtoCopyWith<$Res> get conversation {
    return $ConversationWebSocketApiDtoCopyWith<$Res>(_value.conversation,
        (value) {
      return _then(_value.copyWith(conversation: value));
    });
  }
}

/// @nodoc
abstract class _$$_ConversationEventApiDtoCopyWith<$Res>
    implements $ConversationEventApiDtoCopyWith<$Res> {
  factory _$$_ConversationEventApiDtoCopyWith(_$_ConversationEventApiDto value,
          $Res Function(_$_ConversationEventApiDto) then) =
      __$$_ConversationEventApiDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String event,
      @JsonKey(name: 'data') ConversationWebSocketApiDto conversation});

  @override
  $ConversationWebSocketApiDtoCopyWith<$Res> get conversation;
}

/// @nodoc
class __$$_ConversationEventApiDtoCopyWithImpl<$Res>
    extends _$ConversationEventApiDtoCopyWithImpl<$Res>
    implements _$$_ConversationEventApiDtoCopyWith<$Res> {
  __$$_ConversationEventApiDtoCopyWithImpl(_$_ConversationEventApiDto _value,
      $Res Function(_$_ConversationEventApiDto) _then)
      : super(_value, (v) => _then(v as _$_ConversationEventApiDto));

  @override
  _$_ConversationEventApiDto get _value =>
      super._value as _$_ConversationEventApiDto;

  @override
  $Res call({
    Object? event = freezed,
    Object? conversation = freezed,
  }) {
    return _then(_$_ConversationEventApiDto(
      event: event == freezed
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      conversation: conversation == freezed
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationWebSocketApiDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConversationEventApiDto implements _ConversationEventApiDto {
  _$_ConversationEventApiDto(
      {required this.event, @JsonKey(name: 'data') required this.conversation});

  factory _$_ConversationEventApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationEventApiDtoFromJson(json);

  @override
  final String event;
  @override
  @JsonKey(name: 'data')
  final ConversationWebSocketApiDto conversation;

  @override
  String toString() {
    return 'ConversationEventApiDto(event: $event, conversation: $conversation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationEventApiDto &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality()
                .equals(other.conversation, conversation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(conversation));

  @JsonKey(ignore: true)
  @override
  _$$_ConversationEventApiDtoCopyWith<_$_ConversationEventApiDto>
      get copyWith =>
          __$$_ConversationEventApiDtoCopyWithImpl<_$_ConversationEventApiDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationEventApiDtoToJson(this);
  }
}

abstract class _ConversationEventApiDto implements ConversationEventApiDto {
  factory _ConversationEventApiDto(
          {required final String event,
          @JsonKey(name: 'data')
              required final ConversationWebSocketApiDto conversation}) =
      _$_ConversationEventApiDto;

  factory _ConversationEventApiDto.fromJson(Map<String, dynamic> json) =
      _$_ConversationEventApiDto.fromJson;

  @override
  String get event => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'data')
  ConversationWebSocketApiDto get conversation =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationEventApiDtoCopyWith<_$_ConversationEventApiDto>
      get copyWith => throw _privateConstructorUsedError;
}

ConversationInsideMessageApiDto _$ConversationInsideMessageApiDtoFromJson(
    Map<String, dynamic> json) {
  return _ConversationInsideMessageApiDto.fromJson(json);
}

/// @nodoc
mixin _$ConversationInsideMessageApiDto {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationInsideMessageApiDtoCopyWith<ConversationInsideMessageApiDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationInsideMessageApiDtoCopyWith<$Res> {
  factory $ConversationInsideMessageApiDtoCopyWith(
          ConversationInsideMessageApiDto value,
          $Res Function(ConversationInsideMessageApiDto) then) =
      _$ConversationInsideMessageApiDtoCopyWithImpl<$Res>;
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
class _$ConversationInsideMessageApiDtoCopyWithImpl<$Res>
    implements $ConversationInsideMessageApiDtoCopyWith<$Res> {
  _$ConversationInsideMessageApiDtoCopyWithImpl(this._value, this._then);

  final ConversationInsideMessageApiDto _value;
  // ignore: unused_field
  final $Res Function(ConversationInsideMessageApiDto) _then;

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
abstract class _$$_ConversationInsideMessageApiDtoCopyWith<$Res>
    implements $ConversationInsideMessageApiDtoCopyWith<$Res> {
  factory _$$_ConversationInsideMessageApiDtoCopyWith(
          _$_ConversationInsideMessageApiDto value,
          $Res Function(_$_ConversationInsideMessageApiDto) then) =
      __$$_ConversationInsideMessageApiDtoCopyWithImpl<$Res>;
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
class __$$_ConversationInsideMessageApiDtoCopyWithImpl<$Res>
    extends _$ConversationInsideMessageApiDtoCopyWithImpl<$Res>
    implements _$$_ConversationInsideMessageApiDtoCopyWith<$Res> {
  __$$_ConversationInsideMessageApiDtoCopyWithImpl(
      _$_ConversationInsideMessageApiDto _value,
      $Res Function(_$_ConversationInsideMessageApiDto) _then)
      : super(_value, (v) => _then(v as _$_ConversationInsideMessageApiDto));

  @override
  _$_ConversationInsideMessageApiDto get _value =>
      super._value as _$_ConversationInsideMessageApiDto;

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
    return _then(_$_ConversationInsideMessageApiDto(
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
@JsonSerializable()
class _$_ConversationInsideMessageApiDto
    implements _ConversationInsideMessageApiDto {
  _$_ConversationInsideMessageApiDto(
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

  factory _$_ConversationInsideMessageApiDto.fromJson(
          Map<String, dynamic> json) =>
      _$$_ConversationInsideMessageApiDtoFromJson(json);

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
    return 'ConversationInsideMessageApiDto(id: $id, name: $name, pictureUrl: $pictureUrl, type: $type, public: $public, members: $members, unread: $unread, membersCount: $membersCount, owner: $owner, message: $message, timestamp: $timestamp, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationInsideMessageApiDto &&
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

  @JsonKey(ignore: true)
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
  _$$_ConversationInsideMessageApiDtoCopyWith<
          _$_ConversationInsideMessageApiDto>
      get copyWith => __$$_ConversationInsideMessageApiDtoCopyWithImpl<
          _$_ConversationInsideMessageApiDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationInsideMessageApiDtoToJson(this);
  }
}

abstract class _ConversationInsideMessageApiDto
    implements ConversationInsideMessageApiDto {
  factory _ConversationInsideMessageApiDto(
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
      _$_ConversationInsideMessageApiDto;

  factory _ConversationInsideMessageApiDto.fromJson(Map<String, dynamic> json) =
      _$_ConversationInsideMessageApiDto.fromJson;

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
  _$$_ConversationInsideMessageApiDtoCopyWith<
          _$_ConversationInsideMessageApiDto>
      get copyWith => throw _privateConstructorUsedError;
}

ConversationWebSocketApiDto _$ConversationWebSocketApiDtoFromJson(
    Map<String, dynamic> json) {
  return _ConversationWebSocketApiDto.fromJson(json);
}

/// @nodoc
mixin _$ConversationWebSocketApiDto {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture_url')
  String get pictureUrl => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  bool get public => throw _privateConstructorUsedError;
  List<ProfileApiDto> get members => throw _privateConstructorUsedError;
  int? get unread => throw _privateConstructorUsedError;
  @JsonKey(name: 'members_count')
  int get membersCount => throw _privateConstructorUsedError;
  ProfileApiDto get owner => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConversationWebSocketApiDtoCopyWith<ConversationWebSocketApiDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConversationWebSocketApiDtoCopyWith<$Res> {
  factory $ConversationWebSocketApiDtoCopyWith(
          ConversationWebSocketApiDto value,
          $Res Function(ConversationWebSocketApiDto) then) =
      _$ConversationWebSocketApiDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      @JsonKey(name: 'picture_url') String pictureUrl,
      int type,
      bool public,
      List<ProfileApiDto> members,
      int? unread,
      @JsonKey(name: 'members_count') int membersCount,
      ProfileApiDto owner,
      String? message,
      String timestamp,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  $ProfileApiDtoCopyWith<$Res> get owner;
}

/// @nodoc
class _$ConversationWebSocketApiDtoCopyWithImpl<$Res>
    implements $ConversationWebSocketApiDtoCopyWith<$Res> {
  _$ConversationWebSocketApiDtoCopyWithImpl(this._value, this._then);

  final ConversationWebSocketApiDto _value;
  // ignore: unused_field
  final $Res Function(ConversationWebSocketApiDto) _then;

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
              as List<ProfileApiDto>,
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
              as ProfileApiDto,
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
  $ProfileApiDtoCopyWith<$Res> get owner {
    return $ProfileApiDtoCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$$_ConversationWebSocketApiDtoCopyWith<$Res>
    implements $ConversationWebSocketApiDtoCopyWith<$Res> {
  factory _$$_ConversationWebSocketApiDtoCopyWith(
          _$_ConversationWebSocketApiDto value,
          $Res Function(_$_ConversationWebSocketApiDto) then) =
      __$$_ConversationWebSocketApiDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      @JsonKey(name: 'picture_url') String pictureUrl,
      int type,
      bool public,
      List<ProfileApiDto> members,
      int? unread,
      @JsonKey(name: 'members_count') int membersCount,
      ProfileApiDto owner,
      String? message,
      String timestamp,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  @override
  $ProfileApiDtoCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_ConversationWebSocketApiDtoCopyWithImpl<$Res>
    extends _$ConversationWebSocketApiDtoCopyWithImpl<$Res>
    implements _$$_ConversationWebSocketApiDtoCopyWith<$Res> {
  __$$_ConversationWebSocketApiDtoCopyWithImpl(
      _$_ConversationWebSocketApiDto _value,
      $Res Function(_$_ConversationWebSocketApiDto) _then)
      : super(_value, (v) => _then(v as _$_ConversationWebSocketApiDto));

  @override
  _$_ConversationWebSocketApiDto get _value =>
      super._value as _$_ConversationWebSocketApiDto;

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
    return _then(_$_ConversationWebSocketApiDto(
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
              as List<ProfileApiDto>,
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
              as ProfileApiDto,
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
@JsonSerializable()
class _$_ConversationWebSocketApiDto implements _ConversationWebSocketApiDto {
  _$_ConversationWebSocketApiDto(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      @JsonKey(name: 'picture_url') required this.pictureUrl,
      required this.type,
      required this.public,
      required final List<ProfileApiDto> members,
      this.unread,
      @JsonKey(name: 'members_count') required this.membersCount,
      required this.owner,
      this.message,
      required this.timestamp,
      @JsonKey(name: 'edited_timestamp') required this.editedTimestamp})
      : _members = members;

  factory _$_ConversationWebSocketApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_ConversationWebSocketApiDtoFromJson(json);

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
  final List<ProfileApiDto> _members;
  @override
  List<ProfileApiDto> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final int? unread;
  @override
  @JsonKey(name: 'members_count')
  final int membersCount;
  @override
  final ProfileApiDto owner;
  @override
  final String? message;
  @override
  final String timestamp;
  @override
  @JsonKey(name: 'edited_timestamp')
  final String editedTimestamp;

  @override
  String toString() {
    return 'ConversationWebSocketApiDto(id: $id, name: $name, pictureUrl: $pictureUrl, type: $type, public: $public, members: $members, unread: $unread, membersCount: $membersCount, owner: $owner, message: $message, timestamp: $timestamp, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConversationWebSocketApiDto &&
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

  @JsonKey(ignore: true)
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
  _$$_ConversationWebSocketApiDtoCopyWith<_$_ConversationWebSocketApiDto>
      get copyWith => __$$_ConversationWebSocketApiDtoCopyWithImpl<
          _$_ConversationWebSocketApiDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConversationWebSocketApiDtoToJson(this);
  }
}

abstract class _ConversationWebSocketApiDto
    implements ConversationWebSocketApiDto {
  factory _ConversationWebSocketApiDto(
          {@JsonKey(name: '_id')
              required final String id,
          required final String name,
          @JsonKey(name: 'picture_url')
              required final String pictureUrl,
          required final int type,
          required final bool public,
          required final List<ProfileApiDto> members,
          final int? unread,
          @JsonKey(name: 'members_count')
              required final int membersCount,
          required final ProfileApiDto owner,
          final String? message,
          required final String timestamp,
          @JsonKey(name: 'edited_timestamp')
              required final String editedTimestamp}) =
      _$_ConversationWebSocketApiDto;

  factory _ConversationWebSocketApiDto.fromJson(Map<String, dynamic> json) =
      _$_ConversationWebSocketApiDto.fromJson;

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
  List<ProfileApiDto> get members => throw _privateConstructorUsedError;
  @override
  int? get unread => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'members_count')
  int get membersCount => throw _privateConstructorUsedError;
  @override
  ProfileApiDto get owner => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationWebSocketApiDtoCopyWith<_$_ConversationWebSocketApiDto>
      get copyWith => throw _privateConstructorUsedError;
}

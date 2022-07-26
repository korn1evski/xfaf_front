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
  PictureApiDto? get picture => throw _privateConstructorUsedError;
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
      PictureApiDto? picture,
      EmbedMessageApiDto? message,
      String timestamp,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  $ProfileApiDtoCopyWith<$Res> get owner;
  $PictureApiDtoCopyWith<$Res>? get picture;
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
    Object? picture = freezed,
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
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as PictureApiDto?,
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
  $PictureApiDtoCopyWith<$Res>? get picture {
    if (_value.picture == null) {
      return null;
    }

    return $PictureApiDtoCopyWith<$Res>(_value.picture!, (value) {
      return _then(_value.copyWith(picture: value));
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
      PictureApiDto? picture,
      EmbedMessageApiDto? message,
      String timestamp,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  @override
  $ProfileApiDtoCopyWith<$Res> get owner;
  @override
  $PictureApiDtoCopyWith<$Res>? get picture;
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
    Object? picture = freezed,
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
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as PictureApiDto?,
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
      this.picture,
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
  final PictureApiDto? picture;
  @override
  final EmbedMessageApiDto? message;
  @override
  final String timestamp;
  @override
  @JsonKey(name: 'edited_timestamp')
  final String editedTimestamp;

  @override
  String toString() {
    return 'ConversationApiDto(id: $id, name: $name, pictureUrl: $pictureUrl, type: $type, public: $public, members: $members, unread: $unread, membersCount: $membersCount, owner: $owner, picture: $picture, message: $message, timestamp: $timestamp, editedTimestamp: $editedTimestamp)';
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
            const DeepCollectionEquality().equals(other.picture, picture) &&
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
      const DeepCollectionEquality().hash(picture),
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
      final PictureApiDto? picture,
      final EmbedMessageApiDto? message,
      required final String timestamp,
      @JsonKey(name: 'edited_timestamp')
          required final String editedTimestamp}) = _$_ConversationApiDto;

  factory _ConversationApiDto.fromJson(Map<String, dynamic> json) =
      _$_ConversationApiDto.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'picture_url')
  String get pictureUrl;
  @override
  int get type;
  @override
  bool get public;
  @override
  List<ProfileApiDto> get members;
  @override
  int get unread;
  @override
  @JsonKey(name: 'members_count')
  int get membersCount;
  @override
  ProfileApiDto get owner;
  @override
  PictureApiDto? get picture;
  @override
  EmbedMessageApiDto? get message;
  @override
  String get timestamp;
  @override
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp;
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
  String get event;
  @override
  @JsonKey(name: 'data')
  ConversationWebSocketApiDto get conversation;
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
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'picture_url')
  String get pictureUrl;
  @override
  int get type;
  @override
  bool get public;
  @override
  List<String> get members;
  @override
  int get unread;
  @override
  @JsonKey(name: 'members_count')
  int get membersCount;
  @override
  String get owner;
  @override
  String? get message;
  @override
  String get timestamp;
  @override
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp;
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
  String? get picture => throw _privateConstructorUsedError;
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
      String? picture,
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
    Object? picture = freezed,
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
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
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
      String? picture,
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
    Object? picture = freezed,
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
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
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
      this.picture,
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
  final String? picture;
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
    return 'ConversationWebSocketApiDto(id: $id, name: $name, pictureUrl: $pictureUrl, picture: $picture, type: $type, public: $public, members: $members, unread: $unread, membersCount: $membersCount, owner: $owner, message: $message, timestamp: $timestamp, editedTimestamp: $editedTimestamp)';
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
            const DeepCollectionEquality().equals(other.picture, picture) &&
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
      const DeepCollectionEquality().hash(picture),
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
          final String? picture,
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
  String get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'picture_url')
  String get pictureUrl;
  @override
  String? get picture;
  @override
  int get type;
  @override
  bool get public;
  @override
  List<ProfileApiDto> get members;
  @override
  int? get unread;
  @override
  @JsonKey(name: 'members_count')
  int get membersCount;
  @override
  ProfileApiDto get owner;
  @override
  String? get message;
  @override
  String get timestamp;
  @override
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp;
  @override
  @JsonKey(ignore: true)
  _$$_ConversationWebSocketApiDtoCopyWith<_$_ConversationWebSocketApiDto>
      get copyWith => throw _privateConstructorUsedError;
}

PictureApiDto _$PictureApiDtoFromJson(Map<String, dynamic> json) {
  return _PictureApiDto.fromJson(json);
}

/// @nodoc
mixin _$PictureApiDto {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;
  String get mimetype => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  String get owner => throw _privateConstructorUsedError;
  Attributes get attributes => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_id')
  String? get fileId => throw _privateConstructorUsedError;
  @JsonKey(name: 'filename')
  String get fileName => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PictureApiDtoCopyWith<PictureApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PictureApiDtoCopyWith<$Res> {
  factory $PictureApiDtoCopyWith(
          PictureApiDto value, $Res Function(PictureApiDto) then) =
      _$PictureApiDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String url,
      String extension,
      String mimetype,
      int size,
      int type,
      int width,
      int height,
      String owner,
      Attributes attributes,
      @JsonKey(name: 'file_id') String? fileId,
      @JsonKey(name: 'filename') String fileName,
      String timestamp,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});
}

/// @nodoc
class _$PictureApiDtoCopyWithImpl<$Res>
    implements $PictureApiDtoCopyWith<$Res> {
  _$PictureApiDtoCopyWithImpl(this._value, this._then);

  final PictureApiDto _value;
  // ignore: unused_field
  final $Res Function(PictureApiDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? extension = freezed,
    Object? mimetype = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? owner = freezed,
    Object? attributes = freezed,
    Object? fileId = freezed,
    Object? fileName = freezed,
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
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      mimetype: mimetype == freezed
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
      fileId: fileId == freezed
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_PictureApiDtoCopyWith<$Res>
    implements $PictureApiDtoCopyWith<$Res> {
  factory _$$_PictureApiDtoCopyWith(
          _$_PictureApiDto value, $Res Function(_$_PictureApiDto) then) =
      __$$_PictureApiDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String name,
      String url,
      String extension,
      String mimetype,
      int size,
      int type,
      int width,
      int height,
      String owner,
      Attributes attributes,
      @JsonKey(name: 'file_id') String? fileId,
      @JsonKey(name: 'filename') String fileName,
      String timestamp,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});
}

/// @nodoc
class __$$_PictureApiDtoCopyWithImpl<$Res>
    extends _$PictureApiDtoCopyWithImpl<$Res>
    implements _$$_PictureApiDtoCopyWith<$Res> {
  __$$_PictureApiDtoCopyWithImpl(
      _$_PictureApiDto _value, $Res Function(_$_PictureApiDto) _then)
      : super(_value, (v) => _then(v as _$_PictureApiDto));

  @override
  _$_PictureApiDto get _value => super._value as _$_PictureApiDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? url = freezed,
    Object? extension = freezed,
    Object? mimetype = freezed,
    Object? size = freezed,
    Object? type = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? owner = freezed,
    Object? attributes = freezed,
    Object? fileId = freezed,
    Object? fileName = freezed,
    Object? timestamp = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_$_PictureApiDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      mimetype: mimetype == freezed
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: attributes == freezed
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes,
      fileId: fileId == freezed
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String?,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_PictureApiDto implements _PictureApiDto {
  _$_PictureApiDto(
      {@JsonKey(name: '_id') required this.id,
      required this.name,
      required this.url,
      required this.extension,
      required this.mimetype,
      required this.size,
      required this.type,
      required this.width,
      required this.height,
      required this.owner,
      required this.attributes,
      @JsonKey(name: 'file_id') this.fileId,
      @JsonKey(name: 'filename') required this.fileName,
      required this.timestamp,
      @JsonKey(name: 'edited_timestamp') required this.editedTimestamp});

  factory _$_PictureApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_PictureApiDtoFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  final String extension;
  @override
  final String mimetype;
  @override
  final int size;
  @override
  final int type;
  @override
  final int width;
  @override
  final int height;
  @override
  final String owner;
  @override
  final Attributes attributes;
  @override
  @JsonKey(name: 'file_id')
  final String? fileId;
  @override
  @JsonKey(name: 'filename')
  final String fileName;
  @override
  final String timestamp;
  @override
  @JsonKey(name: 'edited_timestamp')
  final String editedTimestamp;

  @override
  String toString() {
    return 'PictureApiDto(id: $id, name: $name, url: $url, extension: $extension, mimetype: $mimetype, size: $size, type: $type, width: $width, height: $height, owner: $owner, attributes: $attributes, fileId: $fileId, fileName: $fileName, timestamp: $timestamp, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PictureApiDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.extension, extension) &&
            const DeepCollectionEquality().equals(other.mimetype, mimetype) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality()
                .equals(other.attributes, attributes) &&
            const DeepCollectionEquality().equals(other.fileId, fileId) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
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
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(extension),
      const DeepCollectionEquality().hash(mimetype),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(attributes),
      const DeepCollectionEquality().hash(fileId),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(editedTimestamp));

  @JsonKey(ignore: true)
  @override
  _$$_PictureApiDtoCopyWith<_$_PictureApiDto> get copyWith =>
      __$$_PictureApiDtoCopyWithImpl<_$_PictureApiDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PictureApiDtoToJson(this);
  }
}

abstract class _PictureApiDto implements PictureApiDto {
  factory _PictureApiDto(
      {@JsonKey(name: '_id')
          required final String id,
      required final String name,
      required final String url,
      required final String extension,
      required final String mimetype,
      required final int size,
      required final int type,
      required final int width,
      required final int height,
      required final String owner,
      required final Attributes attributes,
      @JsonKey(name: 'file_id')
          final String? fileId,
      @JsonKey(name: 'filename')
          required final String fileName,
      required final String timestamp,
      @JsonKey(name: 'edited_timestamp')
          required final String editedTimestamp}) = _$_PictureApiDto;

  factory _PictureApiDto.fromJson(Map<String, dynamic> json) =
      _$_PictureApiDto.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get name;
  @override
  String get url;
  @override
  String get extension;
  @override
  String get mimetype;
  @override
  int get size;
  @override
  int get type;
  @override
  int get width;
  @override
  int get height;
  @override
  String get owner;
  @override
  Attributes get attributes;
  @override
  @JsonKey(name: 'file_id')
  String? get fileId;
  @override
  @JsonKey(name: 'filename')
  String get fileName;
  @override
  String get timestamp;
  @override
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp;
  @override
  @JsonKey(ignore: true)
  _$$_PictureApiDtoCopyWith<_$_PictureApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of room_models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AttachmentApiDto _$AttachmentApiDtoFromJson(Map<String, dynamic> json) {
  return _AttachmentApiDto.fromJson(json);
}

/// @nodoc
mixin _$AttachmentApiDto {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  String get filename => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get size => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get mimetype => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;
  ProfileApiDto get owner => throw _privateConstructorUsedError;
  ConversationApiDto get conversation => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentApiDtoCopyWith<AttachmentApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentApiDtoCopyWith<$Res> {
  factory $AttachmentApiDtoCopyWith(
          AttachmentApiDto value, $Res Function(AttachmentApiDto) then) =
      _$AttachmentApiDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      String filename,
      String name,
      String size,
      int width,
      int height,
      int type,
      String extension,
      String url,
      String mimetype,
      String timestamp,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp,
      ProfileApiDto owner,
      ConversationApiDto conversation,
      String message});

  $ProfileApiDtoCopyWith<$Res> get owner;
  $ConversationApiDtoCopyWith<$Res> get conversation;
}

/// @nodoc
class _$AttachmentApiDtoCopyWithImpl<$Res>
    implements $AttachmentApiDtoCopyWith<$Res> {
  _$AttachmentApiDtoCopyWithImpl(this._value, this._then);

  final AttachmentApiDto _value;
  // ignore: unused_field
  final $Res Function(AttachmentApiDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? filename = freezed,
    Object? name = freezed,
    Object? size = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? type = freezed,
    Object? extension = freezed,
    Object? url = freezed,
    Object? mimetype = freezed,
    Object? timestamp = freezed,
    Object? editedTimestamp = freezed,
    Object? owner = freezed,
    Object? conversation = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      mimetype: mimetype == freezed
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileApiDto,
      conversation: conversation == freezed
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationApiDto,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
  $ConversationApiDtoCopyWith<$Res> get conversation {
    return $ConversationApiDtoCopyWith<$Res>(_value.conversation, (value) {
      return _then(_value.copyWith(conversation: value));
    });
  }
}

/// @nodoc
abstract class _$$_AttachmentApiDtoCopyWith<$Res>
    implements $AttachmentApiDtoCopyWith<$Res> {
  factory _$$_AttachmentApiDtoCopyWith(
          _$_AttachmentApiDto value, $Res Function(_$_AttachmentApiDto) then) =
      __$$_AttachmentApiDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      String filename,
      String name,
      String size,
      int width,
      int height,
      int type,
      String extension,
      String url,
      String mimetype,
      String timestamp,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp,
      ProfileApiDto owner,
      ConversationApiDto conversation,
      String message});

  @override
  $ProfileApiDtoCopyWith<$Res> get owner;
  @override
  $ConversationApiDtoCopyWith<$Res> get conversation;
}

/// @nodoc
class __$$_AttachmentApiDtoCopyWithImpl<$Res>
    extends _$AttachmentApiDtoCopyWithImpl<$Res>
    implements _$$_AttachmentApiDtoCopyWith<$Res> {
  __$$_AttachmentApiDtoCopyWithImpl(
      _$_AttachmentApiDto _value, $Res Function(_$_AttachmentApiDto) _then)
      : super(_value, (v) => _then(v as _$_AttachmentApiDto));

  @override
  _$_AttachmentApiDto get _value => super._value as _$_AttachmentApiDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? filename = freezed,
    Object? name = freezed,
    Object? size = freezed,
    Object? width = freezed,
    Object? height = freezed,
    Object? type = freezed,
    Object? extension = freezed,
    Object? url = freezed,
    Object? mimetype = freezed,
    Object? timestamp = freezed,
    Object? editedTimestamp = freezed,
    Object? owner = freezed,
    Object? conversation = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_AttachmentApiDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filename: filename == freezed
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      extension: extension == freezed
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      mimetype: mimetype == freezed
          ? _value.mimetype
          : mimetype // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileApiDto,
      conversation: conversation == freezed
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationApiDto,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttachmentApiDto implements _AttachmentApiDto {
  _$_AttachmentApiDto(
      {@JsonKey(name: '_id') required this.id,
      required this.filename,
      required this.name,
      required this.size,
      required this.width,
      required this.height,
      required this.type,
      required this.extension,
      required this.url,
      required this.mimetype,
      required this.timestamp,
      @JsonKey(name: 'edited_timestamp') required this.editedTimestamp,
      required this.owner,
      required this.conversation,
      required this.message});

  factory _$_AttachmentApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentApiDtoFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String filename;
  @override
  final String name;
  @override
  final String size;
  @override
  final int width;
  @override
  final int height;
  @override
  final int type;
  @override
  final String extension;
  @override
  final String url;
  @override
  final String mimetype;
  @override
  final String timestamp;
  @override
  @JsonKey(name: 'edited_timestamp')
  final String editedTimestamp;
  @override
  final ProfileApiDto owner;
  @override
  final ConversationApiDto conversation;
  @override
  final String message;

  @override
  String toString() {
    return 'AttachmentApiDto(id: $id, filename: $filename, name: $name, size: $size, width: $width, height: $height, type: $type, extension: $extension, url: $url, mimetype: $mimetype, timestamp: $timestamp, editedTimestamp: $editedTimestamp, owner: $owner, conversation: $conversation, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentApiDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.filename, filename) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.size, size) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.extension, extension) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.mimetype, mimetype) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality()
                .equals(other.editedTimestamp, editedTimestamp) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality()
                .equals(other.conversation, conversation) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(filename),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(size),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(extension),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(mimetype),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(editedTimestamp),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(conversation),
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_AttachmentApiDtoCopyWith<_$_AttachmentApiDto> get copyWith =>
      __$$_AttachmentApiDtoCopyWithImpl<_$_AttachmentApiDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentApiDtoToJson(this);
  }
}

abstract class _AttachmentApiDto implements AttachmentApiDto {
  factory _AttachmentApiDto(
      {@JsonKey(name: '_id') required final String id,
      required final String filename,
      required final String name,
      required final String size,
      required final int width,
      required final int height,
      required final int type,
      required final String extension,
      required final String url,
      required final String mimetype,
      required final String timestamp,
      @JsonKey(name: 'edited_timestamp') required final String editedTimestamp,
      required final ProfileApiDto owner,
      required final ConversationApiDto conversation,
      required final String message}) = _$_AttachmentApiDto;

  factory _AttachmentApiDto.fromJson(Map<String, dynamic> json) =
      _$_AttachmentApiDto.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  String get filename;
  @override
  String get name;
  @override
  String get size;
  @override
  int get width;
  @override
  int get height;
  @override
  int get type;
  @override
  String get extension;
  @override
  String get url;
  @override
  String get mimetype;
  @override
  String get timestamp;
  @override
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp;
  @override
  ProfileApiDto get owner;
  @override
  ConversationApiDto get conversation;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentApiDtoCopyWith<_$_AttachmentApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

EmbedMessageApiDto _$EmbedMessageApiDtoFromJson(Map<String, dynamic> json) {
  return _EmbedMessageApiDto.fromJson(json);
}

/// @nodoc
mixin _$EmbedMessageApiDto {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  List<String> get attachments => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get conversation => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_poll')
  bool get isPoll =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'is_pool') required bool isPool,
// required String organization,
  String get timestamp => throw _privateConstructorUsedError;
  ProfileApiDto get owner => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  int get type =>
      throw _privateConstructorUsedError; // @JsonKey(name: '__v') required int v,
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmbedMessageApiDtoCopyWith<EmbedMessageApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedMessageApiDtoCopyWith<$Res> {
  factory $EmbedMessageApiDtoCopyWith(
          EmbedMessageApiDto value, $Res Function(EmbedMessageApiDto) then) =
      _$EmbedMessageApiDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<String> attachments,
      String content,
      String conversation,
      @JsonKey(name: 'is_poll') bool isPoll,
      String timestamp,
      ProfileApiDto owner,
      String tag,
      int type,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  $ProfileApiDtoCopyWith<$Res> get owner;
}

/// @nodoc
class _$EmbedMessageApiDtoCopyWithImpl<$Res>
    implements $EmbedMessageApiDtoCopyWith<$Res> {
  _$EmbedMessageApiDtoCopyWithImpl(this._value, this._then);

  final EmbedMessageApiDto _value;
  // ignore: unused_field
  final $Res Function(EmbedMessageApiDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? attachments = freezed,
    Object? content = freezed,
    Object? conversation = freezed,
    Object? isPoll = freezed,
    Object? timestamp = freezed,
    Object? owner = freezed,
    Object? tag = freezed,
    Object? type = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      conversation: conversation == freezed
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as String,
      isPoll: isPoll == freezed
          ? _value.isPoll
          : isPoll // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileApiDto,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$_EmbedMessageApiDtoCopyWith<$Res>
    implements $EmbedMessageApiDtoCopyWith<$Res> {
  factory _$$_EmbedMessageApiDtoCopyWith(_$_EmbedMessageApiDto value,
          $Res Function(_$_EmbedMessageApiDto) then) =
      __$$_EmbedMessageApiDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<String> attachments,
      String content,
      String conversation,
      @JsonKey(name: 'is_poll') bool isPoll,
      String timestamp,
      ProfileApiDto owner,
      String tag,
      int type,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  @override
  $ProfileApiDtoCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_EmbedMessageApiDtoCopyWithImpl<$Res>
    extends _$EmbedMessageApiDtoCopyWithImpl<$Res>
    implements _$$_EmbedMessageApiDtoCopyWith<$Res> {
  __$$_EmbedMessageApiDtoCopyWithImpl(
      _$_EmbedMessageApiDto _value, $Res Function(_$_EmbedMessageApiDto) _then)
      : super(_value, (v) => _then(v as _$_EmbedMessageApiDto));

  @override
  _$_EmbedMessageApiDto get _value => super._value as _$_EmbedMessageApiDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? attachments = freezed,
    Object? content = freezed,
    Object? conversation = freezed,
    Object? isPoll = freezed,
    Object? timestamp = freezed,
    Object? owner = freezed,
    Object? tag = freezed,
    Object? type = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_$_EmbedMessageApiDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: attachments == freezed
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      conversation: conversation == freezed
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as String,
      isPoll: isPoll == freezed
          ? _value.isPoll
          : isPoll // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileApiDto,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmbedMessageApiDto implements _EmbedMessageApiDto {
  _$_EmbedMessageApiDto(
      {@JsonKey(name: '_id') required this.id,
      required final List<String> attachments,
      required this.content,
      required this.conversation,
      @JsonKey(name: 'is_poll') required this.isPoll,
      required this.timestamp,
      required this.owner,
      required this.tag,
      required this.type,
      @JsonKey(name: 'edited_timestamp') required this.editedTimestamp})
      : _attachments = attachments;

  factory _$_EmbedMessageApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_EmbedMessageApiDtoFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  final List<String> _attachments;
  @override
  List<String> get attachments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final String content;
  @override
  final String conversation;
  @override
  @JsonKey(name: 'is_poll')
  final bool isPoll;
// @JsonKey(name: 'is_pool') required bool isPool,
// required String organization,
  @override
  final String timestamp;
  @override
  final ProfileApiDto owner;
  @override
  final String tag;
  @override
  final int type;
// @JsonKey(name: '__v') required int v,
  @override
  @JsonKey(name: 'edited_timestamp')
  final String editedTimestamp;

  @override
  String toString() {
    return 'EmbedMessageApiDto(id: $id, attachments: $attachments, content: $content, conversation: $conversation, isPoll: $isPoll, timestamp: $timestamp, owner: $owner, tag: $tag, type: $type, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmbedMessageApiDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.conversation, conversation) &&
            const DeepCollectionEquality().equals(other.isPoll, isPoll) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.tag, tag) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.editedTimestamp, editedTimestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(conversation),
      const DeepCollectionEquality().hash(isPoll),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(tag),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(editedTimestamp));

  @JsonKey(ignore: true)
  @override
  _$$_EmbedMessageApiDtoCopyWith<_$_EmbedMessageApiDto> get copyWith =>
      __$$_EmbedMessageApiDtoCopyWithImpl<_$_EmbedMessageApiDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmbedMessageApiDtoToJson(this);
  }
}

abstract class _EmbedMessageApiDto implements EmbedMessageApiDto {
  factory _EmbedMessageApiDto(
      {@JsonKey(name: '_id')
          required final String id,
      required final List<String> attachments,
      required final String content,
      required final String conversation,
      @JsonKey(name: 'is_poll')
          required final bool isPoll,
      required final String timestamp,
      required final ProfileApiDto owner,
      required final String tag,
      required final int type,
      @JsonKey(name: 'edited_timestamp')
          required final String editedTimestamp}) = _$_EmbedMessageApiDto;

  factory _EmbedMessageApiDto.fromJson(Map<String, dynamic> json) =
      _$_EmbedMessageApiDto.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  List<String> get attachments;
  @override
  String get content;
  @override
  String get conversation;
  @override
  @JsonKey(name: 'is_poll')
  bool get isPoll;
  @override // @JsonKey(name: 'is_pool') required bool isPool,
// required String organization,
  String get timestamp;
  @override
  ProfileApiDto get owner;
  @override
  String get tag;
  @override
  int get type;
  @override // @JsonKey(name: '__v') required int v,
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp;
  @override
  @JsonKey(ignore: true)
  _$$_EmbedMessageApiDtoCopyWith<_$_EmbedMessageApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

EmbedApiDto _$EmbedApiDtoFromJson(Map<String, dynamic> json) {
  return _EmbedApiDto.fromJson(json);
}

/// @nodoc
mixin _$EmbedApiDto {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  List<AttachmentApiDto> get attachments => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  EmbedMessageApiDto get message => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  ProfileApiDto get owner => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmbedApiDtoCopyWith<EmbedApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedApiDtoCopyWith<$Res> {
  factory $EmbedApiDtoCopyWith(
          EmbedApiDto value, $Res Function(EmbedApiDto) then) =
      _$EmbedApiDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<AttachmentApiDto> attachments,
      String description,
      EmbedMessageApiDto message,
      String timestamp,
      ProfileApiDto owner,
      String tag,
      int type,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  $EmbedMessageApiDtoCopyWith<$Res> get message;
  $ProfileApiDtoCopyWith<$Res> get owner;
}

/// @nodoc
class _$EmbedApiDtoCopyWithImpl<$Res> implements $EmbedApiDtoCopyWith<$Res> {
  _$EmbedApiDtoCopyWithImpl(this._value, this._then);

  final EmbedApiDto _value;
  // ignore: unused_field
  final $Res Function(EmbedApiDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? attachments = freezed,
    Object? description = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
    Object? owner = freezed,
    Object? tag = freezed,
    Object? type = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentApiDto>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as EmbedMessageApiDto,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileApiDto,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $EmbedMessageApiDtoCopyWith<$Res> get message {
    return $EmbedMessageApiDtoCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }

  @override
  $ProfileApiDtoCopyWith<$Res> get owner {
    return $ProfileApiDtoCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$$_EmbedApiDtoCopyWith<$Res>
    implements $EmbedApiDtoCopyWith<$Res> {
  factory _$$_EmbedApiDtoCopyWith(
          _$_EmbedApiDto value, $Res Function(_$_EmbedApiDto) then) =
      __$$_EmbedApiDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<AttachmentApiDto> attachments,
      String description,
      EmbedMessageApiDto message,
      String timestamp,
      ProfileApiDto owner,
      String tag,
      int type,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  @override
  $EmbedMessageApiDtoCopyWith<$Res> get message;
  @override
  $ProfileApiDtoCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_EmbedApiDtoCopyWithImpl<$Res> extends _$EmbedApiDtoCopyWithImpl<$Res>
    implements _$$_EmbedApiDtoCopyWith<$Res> {
  __$$_EmbedApiDtoCopyWithImpl(
      _$_EmbedApiDto _value, $Res Function(_$_EmbedApiDto) _then)
      : super(_value, (v) => _then(v as _$_EmbedApiDto));

  @override
  _$_EmbedApiDto get _value => super._value as _$_EmbedApiDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? attachments = freezed,
    Object? description = freezed,
    Object? message = freezed,
    Object? timestamp = freezed,
    Object? owner = freezed,
    Object? tag = freezed,
    Object? type = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_$_EmbedApiDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: attachments == freezed
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentApiDto>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as EmbedMessageApiDto,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileApiDto,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EmbedApiDto implements _EmbedApiDto {
  _$_EmbedApiDto(
      {@JsonKey(name: '_id') required this.id,
      required final List<AttachmentApiDto> attachments,
      required this.description,
      required this.message,
      required this.timestamp,
      required this.owner,
      required this.tag,
      required this.type,
      @JsonKey(name: 'edited_timestamp') required this.editedTimestamp})
      : _attachments = attachments;

  factory _$_EmbedApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_EmbedApiDtoFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  final List<AttachmentApiDto> _attachments;
  @override
  List<AttachmentApiDto> get attachments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final String description;
  @override
  final EmbedMessageApiDto message;
  @override
  final String timestamp;
  @override
  final ProfileApiDto owner;
  @override
  final String tag;
  @override
  final int type;
  @override
  @JsonKey(name: 'edited_timestamp')
  final String editedTimestamp;

  @override
  String toString() {
    return 'EmbedApiDto(id: $id, attachments: $attachments, description: $description, message: $message, timestamp: $timestamp, owner: $owner, tag: $tag, type: $type, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmbedApiDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.tag, tag) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.editedTimestamp, editedTimestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(tag),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(editedTimestamp));

  @JsonKey(ignore: true)
  @override
  _$$_EmbedApiDtoCopyWith<_$_EmbedApiDto> get copyWith =>
      __$$_EmbedApiDtoCopyWithImpl<_$_EmbedApiDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmbedApiDtoToJson(this);
  }
}

abstract class _EmbedApiDto implements EmbedApiDto {
  factory _EmbedApiDto(
      {@JsonKey(name: '_id')
          required final String id,
      required final List<AttachmentApiDto> attachments,
      required final String description,
      required final EmbedMessageApiDto message,
      required final String timestamp,
      required final ProfileApiDto owner,
      required final String tag,
      required final int type,
      @JsonKey(name: 'edited_timestamp')
          required final String editedTimestamp}) = _$_EmbedApiDto;

  factory _EmbedApiDto.fromJson(Map<String, dynamic> json) =
      _$_EmbedApiDto.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  List<AttachmentApiDto> get attachments;
  @override
  String get description;
  @override
  EmbedMessageApiDto get message;
  @override
  String get timestamp;
  @override
  ProfileApiDto get owner;
  @override
  String get tag;
  @override
  int get type;
  @override
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp;
  @override
  @JsonKey(ignore: true)
  _$$_EmbedApiDtoCopyWith<_$_EmbedApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageApiDto _$MessageApiDtoFromJson(Map<String, dynamic> json) {
  return _MessageApiDto.fromJson(json);
}

/// @nodoc
mixin _$MessageApiDto {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  bool get after => throw _privateConstructorUsedError;
  List<AttachmentApiDto> get attachments => throw _privateConstructorUsedError;
  bool get before => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  ConversationInsideMessageApiDto get conversation =>
      throw _privateConstructorUsedError;
  bool get current => throw _privateConstructorUsedError;
  List<EmbedApiDto> get embeds => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_poll')
  bool get isPoll => throw _privateConstructorUsedError;
  List<ProfileApiDto> get members => throw _privateConstructorUsedError;
  ProfileApiDto? get owner => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageApiDtoCopyWith<MessageApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageApiDtoCopyWith<$Res> {
  factory $MessageApiDtoCopyWith(
          MessageApiDto value, $Res Function(MessageApiDto) then) =
      _$MessageApiDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      bool after,
      List<AttachmentApiDto> attachments,
      bool before,
      String timestamp,
      String content,
      ConversationInsideMessageApiDto conversation,
      bool current,
      List<EmbedApiDto> embeds,
      @JsonKey(name: 'is_poll') bool isPoll,
      List<ProfileApiDto> members,
      ProfileApiDto? owner,
      String tag,
      int type,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  $ConversationInsideMessageApiDtoCopyWith<$Res> get conversation;
  $ProfileApiDtoCopyWith<$Res>? get owner;
}

/// @nodoc
class _$MessageApiDtoCopyWithImpl<$Res>
    implements $MessageApiDtoCopyWith<$Res> {
  _$MessageApiDtoCopyWithImpl(this._value, this._then);

  final MessageApiDto _value;
  // ignore: unused_field
  final $Res Function(MessageApiDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? after = freezed,
    Object? attachments = freezed,
    Object? before = freezed,
    Object? timestamp = freezed,
    Object? content = freezed,
    Object? conversation = freezed,
    Object? current = freezed,
    Object? embeds = freezed,
    Object? isPoll = freezed,
    Object? members = freezed,
    Object? owner = freezed,
    Object? tag = freezed,
    Object? type = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      after: after == freezed
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as bool,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentApiDto>,
      before: before == freezed
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      conversation: conversation == freezed
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationInsideMessageApiDto,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool,
      embeds: embeds == freezed
          ? _value.embeds
          : embeds // ignore: cast_nullable_to_non_nullable
              as List<EmbedApiDto>,
      isPoll: isPoll == freezed
          ? _value.isPoll
          : isPoll // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ProfileApiDto>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileApiDto?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ConversationInsideMessageApiDtoCopyWith<$Res> get conversation {
    return $ConversationInsideMessageApiDtoCopyWith<$Res>(_value.conversation,
        (value) {
      return _then(_value.copyWith(conversation: value));
    });
  }

  @override
  $ProfileApiDtoCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $ProfileApiDtoCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$$_MessageApiDtoCopyWith<$Res>
    implements $MessageApiDtoCopyWith<$Res> {
  factory _$$_MessageApiDtoCopyWith(
          _$_MessageApiDto value, $Res Function(_$_MessageApiDto) then) =
      __$$_MessageApiDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      bool after,
      List<AttachmentApiDto> attachments,
      bool before,
      String timestamp,
      String content,
      ConversationInsideMessageApiDto conversation,
      bool current,
      List<EmbedApiDto> embeds,
      @JsonKey(name: 'is_poll') bool isPoll,
      List<ProfileApiDto> members,
      ProfileApiDto? owner,
      String tag,
      int type,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  @override
  $ConversationInsideMessageApiDtoCopyWith<$Res> get conversation;
  @override
  $ProfileApiDtoCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$_MessageApiDtoCopyWithImpl<$Res>
    extends _$MessageApiDtoCopyWithImpl<$Res>
    implements _$$_MessageApiDtoCopyWith<$Res> {
  __$$_MessageApiDtoCopyWithImpl(
      _$_MessageApiDto _value, $Res Function(_$_MessageApiDto) _then)
      : super(_value, (v) => _then(v as _$_MessageApiDto));

  @override
  _$_MessageApiDto get _value => super._value as _$_MessageApiDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? after = freezed,
    Object? attachments = freezed,
    Object? before = freezed,
    Object? timestamp = freezed,
    Object? content = freezed,
    Object? conversation = freezed,
    Object? current = freezed,
    Object? embeds = freezed,
    Object? isPoll = freezed,
    Object? members = freezed,
    Object? owner = freezed,
    Object? tag = freezed,
    Object? type = freezed,
    Object? editedTimestamp = freezed,
  }) {
    return _then(_$_MessageApiDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      after: after == freezed
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as bool,
      attachments: attachments == freezed
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentApiDto>,
      before: before == freezed
          ? _value.before
          : before // ignore: cast_nullable_to_non_nullable
              as bool,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      conversation: conversation == freezed
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationInsideMessageApiDto,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool,
      embeds: embeds == freezed
          ? _value._embeds
          : embeds // ignore: cast_nullable_to_non_nullable
              as List<EmbedApiDto>,
      isPoll: isPoll == freezed
          ? _value.isPoll
          : isPoll // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ProfileApiDto>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileApiDto?,
      tag: tag == freezed
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      editedTimestamp: editedTimestamp == freezed
          ? _value.editedTimestamp
          : editedTimestamp // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageApiDto implements _MessageApiDto {
  _$_MessageApiDto(
      {@JsonKey(name: '_id') required this.id,
      required this.after,
      required final List<AttachmentApiDto> attachments,
      required this.before,
      required this.timestamp,
      required this.content,
      required this.conversation,
      required this.current,
      required final List<EmbedApiDto> embeds,
      @JsonKey(name: 'is_poll') required this.isPoll,
      required final List<ProfileApiDto> members,
      this.owner,
      required this.tag,
      required this.type,
      @JsonKey(name: 'edited_timestamp') required this.editedTimestamp})
      : _attachments = attachments,
        _embeds = embeds,
        _members = members;

  factory _$_MessageApiDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessageApiDtoFromJson(json);

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final bool after;
  final List<AttachmentApiDto> _attachments;
  @override
  List<AttachmentApiDto> get attachments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final bool before;
  @override
  final String timestamp;
  @override
  final String content;
  @override
  final ConversationInsideMessageApiDto conversation;
  @override
  final bool current;
  final List<EmbedApiDto> _embeds;
  @override
  List<EmbedApiDto> get embeds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_embeds);
  }

  @override
  @JsonKey(name: 'is_poll')
  final bool isPoll;
  final List<ProfileApiDto> _members;
  @override
  List<ProfileApiDto> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final ProfileApiDto? owner;
  @override
  final String tag;
  @override
  final int type;
  @override
  @JsonKey(name: 'edited_timestamp')
  final String editedTimestamp;

  @override
  String toString() {
    return 'MessageApiDto(id: $id, after: $after, attachments: $attachments, before: $before, timestamp: $timestamp, content: $content, conversation: $conversation, current: $current, embeds: $embeds, isPoll: $isPoll, members: $members, owner: $owner, tag: $tag, type: $type, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageApiDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.after, after) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments) &&
            const DeepCollectionEquality().equals(other.before, before) &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.conversation, conversation) &&
            const DeepCollectionEquality().equals(other.current, current) &&
            const DeepCollectionEquality().equals(other._embeds, _embeds) &&
            const DeepCollectionEquality().equals(other.isPoll, isPoll) &&
            const DeepCollectionEquality().equals(other._members, _members) &&
            const DeepCollectionEquality().equals(other.owner, owner) &&
            const DeepCollectionEquality().equals(other.tag, tag) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.editedTimestamp, editedTimestamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(after),
      const DeepCollectionEquality().hash(_attachments),
      const DeepCollectionEquality().hash(before),
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(conversation),
      const DeepCollectionEquality().hash(current),
      const DeepCollectionEquality().hash(_embeds),
      const DeepCollectionEquality().hash(isPoll),
      const DeepCollectionEquality().hash(_members),
      const DeepCollectionEquality().hash(owner),
      const DeepCollectionEquality().hash(tag),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(editedTimestamp));

  @JsonKey(ignore: true)
  @override
  _$$_MessageApiDtoCopyWith<_$_MessageApiDto> get copyWith =>
      __$$_MessageApiDtoCopyWithImpl<_$_MessageApiDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageApiDtoToJson(this);
  }
}

abstract class _MessageApiDto implements MessageApiDto {
  factory _MessageApiDto(
      {@JsonKey(name: '_id')
          required final String id,
      required final bool after,
      required final List<AttachmentApiDto> attachments,
      required final bool before,
      required final String timestamp,
      required final String content,
      required final ConversationInsideMessageApiDto conversation,
      required final bool current,
      required final List<EmbedApiDto> embeds,
      @JsonKey(name: 'is_poll')
          required final bool isPoll,
      required final List<ProfileApiDto> members,
      final ProfileApiDto? owner,
      required final String tag,
      required final int type,
      @JsonKey(name: 'edited_timestamp')
          required final String editedTimestamp}) = _$_MessageApiDto;

  factory _MessageApiDto.fromJson(Map<String, dynamic> json) =
      _$_MessageApiDto.fromJson;

  @override
  @JsonKey(name: '_id')
  String get id;
  @override
  bool get after;
  @override
  List<AttachmentApiDto> get attachments;
  @override
  bool get before;
  @override
  String get timestamp;
  @override
  String get content;
  @override
  ConversationInsideMessageApiDto get conversation;
  @override
  bool get current;
  @override
  List<EmbedApiDto> get embeds;
  @override
  @JsonKey(name: 'is_poll')
  bool get isPoll;
  @override
  List<ProfileApiDto> get members;
  @override
  ProfileApiDto? get owner;
  @override
  String get tag;
  @override
  int get type;
  @override
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp;
  @override
  @JsonKey(ignore: true)
  _$$_MessageApiDtoCopyWith<_$_MessageApiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

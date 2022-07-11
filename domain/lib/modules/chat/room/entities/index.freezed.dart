// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of room_entities;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AttachmentEntity {
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
  String get editedTimestamp => throw _privateConstructorUsedError;
  ProfileEntity get owner => throw _privateConstructorUsedError;
  ConversationEntity get conversation => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AttachmentEntityCopyWith<AttachmentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentEntityCopyWith<$Res> {
  factory $AttachmentEntityCopyWith(
          AttachmentEntity value, $Res Function(AttachmentEntity) then) =
      _$AttachmentEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
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
      String editedTimestamp,
      ProfileEntity owner,
      ConversationEntity conversation,
      String message});

  $ProfileEntityCopyWith<$Res> get owner;
  $ConversationEntityCopyWith<$Res> get conversation;
}

/// @nodoc
class _$AttachmentEntityCopyWithImpl<$Res>
    implements $AttachmentEntityCopyWith<$Res> {
  _$AttachmentEntityCopyWithImpl(this._value, this._then);

  final AttachmentEntity _value;
  // ignore: unused_field
  final $Res Function(AttachmentEntity) _then;

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
              as ProfileEntity,
      conversation: conversation == freezed
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
  $ConversationEntityCopyWith<$Res> get conversation {
    return $ConversationEntityCopyWith<$Res>(_value.conversation, (value) {
      return _then(_value.copyWith(conversation: value));
    });
  }
}

/// @nodoc
abstract class _$$_AttachmentEntityCopyWith<$Res>
    implements $AttachmentEntityCopyWith<$Res> {
  factory _$$_AttachmentEntityCopyWith(
          _$_AttachmentEntity value, $Res Function(_$_AttachmentEntity) then) =
      __$$_AttachmentEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
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
      String editedTimestamp,
      ProfileEntity owner,
      ConversationEntity conversation,
      String message});

  @override
  $ProfileEntityCopyWith<$Res> get owner;
  @override
  $ConversationEntityCopyWith<$Res> get conversation;
}

/// @nodoc
class __$$_AttachmentEntityCopyWithImpl<$Res>
    extends _$AttachmentEntityCopyWithImpl<$Res>
    implements _$$_AttachmentEntityCopyWith<$Res> {
  __$$_AttachmentEntityCopyWithImpl(
      _$_AttachmentEntity _value, $Res Function(_$_AttachmentEntity) _then)
      : super(_value, (v) => _then(v as _$_AttachmentEntity));

  @override
  _$_AttachmentEntity get _value => super._value as _$_AttachmentEntity;

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
    return _then(_$_AttachmentEntity(
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
              as ProfileEntity,
      conversation: conversation == freezed
          ? _value.conversation
          : conversation // ignore: cast_nullable_to_non_nullable
              as ConversationEntity,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AttachmentEntity implements _AttachmentEntity {
  _$_AttachmentEntity(
      {required this.id,
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
      required this.editedTimestamp,
      required this.owner,
      required this.conversation,
      required this.message});

  @override
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
  final String editedTimestamp;
  @override
  final ProfileEntity owner;
  @override
  final ConversationEntity conversation;
  @override
  final String message;

  @override
  String toString() {
    return 'AttachmentEntity(id: $id, filename: $filename, name: $name, size: $size, width: $width, height: $height, type: $type, extension: $extension, url: $url, mimetype: $mimetype, timestamp: $timestamp, editedTimestamp: $editedTimestamp, owner: $owner, conversation: $conversation, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttachmentEntity &&
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
  _$$_AttachmentEntityCopyWith<_$_AttachmentEntity> get copyWith =>
      __$$_AttachmentEntityCopyWithImpl<_$_AttachmentEntity>(this, _$identity);
}

abstract class _AttachmentEntity implements AttachmentEntity {
  factory _AttachmentEntity(
      {required final String id,
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
      required final String editedTimestamp,
      required final ProfileEntity owner,
      required final ConversationEntity conversation,
      required final String message}) = _$_AttachmentEntity;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get filename => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get size => throw _privateConstructorUsedError;
  @override
  int get width => throw _privateConstructorUsedError;
  @override
  int get height => throw _privateConstructorUsedError;
  @override
  int get type => throw _privateConstructorUsedError;
  @override
  String get extension => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  String get mimetype => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  String get editedTimestamp => throw _privateConstructorUsedError;
  @override
  ProfileEntity get owner => throw _privateConstructorUsedError;
  @override
  ConversationEntity get conversation => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentEntityCopyWith<_$_AttachmentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmbedMessageEntity {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  List<AttachmentEntity> get attachments => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get conversation => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_poll')
  bool get isPoll =>
      throw _privateConstructorUsedError; // @JsonKey(name: 'is_pool') required bool isPool,
// required String organization,
  String get timestamp => throw _privateConstructorUsedError;
  ProfileEntity get owner => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  int get type =>
      throw _privateConstructorUsedError; // @JsonKey(name: '__v') required int v,
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmbedMessageEntityCopyWith<EmbedMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedMessageEntityCopyWith<$Res> {
  factory $EmbedMessageEntityCopyWith(
          EmbedMessageEntity value, $Res Function(EmbedMessageEntity) then) =
      _$EmbedMessageEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<AttachmentEntity> attachments,
      String content,
      String conversation,
      @JsonKey(name: 'is_poll') bool isPoll,
      String timestamp,
      ProfileEntity owner,
      String tag,
      int type,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  $ProfileEntityCopyWith<$Res> get owner;
}

/// @nodoc
class _$EmbedMessageEntityCopyWithImpl<$Res>
    implements $EmbedMessageEntityCopyWith<$Res> {
  _$EmbedMessageEntityCopyWithImpl(this._value, this._then);

  final EmbedMessageEntity _value;
  // ignore: unused_field
  final $Res Function(EmbedMessageEntity) _then;

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
              as List<AttachmentEntity>,
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
              as ProfileEntity,
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
  $ProfileEntityCopyWith<$Res> get owner {
    return $ProfileEntityCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$$_EmbedMessageEntityCopyWith<$Res>
    implements $EmbedMessageEntityCopyWith<$Res> {
  factory _$$_EmbedMessageEntityCopyWith(_$_EmbedMessageEntity value,
          $Res Function(_$_EmbedMessageEntity) then) =
      __$$_EmbedMessageEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      List<AttachmentEntity> attachments,
      String content,
      String conversation,
      @JsonKey(name: 'is_poll') bool isPoll,
      String timestamp,
      ProfileEntity owner,
      String tag,
      int type,
      @JsonKey(name: 'edited_timestamp') String editedTimestamp});

  @override
  $ProfileEntityCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_EmbedMessageEntityCopyWithImpl<$Res>
    extends _$EmbedMessageEntityCopyWithImpl<$Res>
    implements _$$_EmbedMessageEntityCopyWith<$Res> {
  __$$_EmbedMessageEntityCopyWithImpl(
      _$_EmbedMessageEntity _value, $Res Function(_$_EmbedMessageEntity) _then)
      : super(_value, (v) => _then(v as _$_EmbedMessageEntity));

  @override
  _$_EmbedMessageEntity get _value => super._value as _$_EmbedMessageEntity;

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
    return _then(_$_EmbedMessageEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: attachments == freezed
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity>,
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
              as ProfileEntity,
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

class _$_EmbedMessageEntity implements _EmbedMessageEntity {
  _$_EmbedMessageEntity(
      {@JsonKey(name: '_id') required this.id,
      required final List<AttachmentEntity> attachments,
      required this.content,
      required this.conversation,
      @JsonKey(name: 'is_poll') required this.isPoll,
      required this.timestamp,
      required this.owner,
      required this.tag,
      required this.type,
      @JsonKey(name: 'edited_timestamp') required this.editedTimestamp})
      : _attachments = attachments;

  @override
  @JsonKey(name: '_id')
  final String id;
  final List<AttachmentEntity> _attachments;
  @override
  List<AttachmentEntity> get attachments {
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
  final ProfileEntity owner;
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
    return 'EmbedMessageEntity(id: $id, attachments: $attachments, content: $content, conversation: $conversation, isPoll: $isPoll, timestamp: $timestamp, owner: $owner, tag: $tag, type: $type, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmbedMessageEntity &&
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
  _$$_EmbedMessageEntityCopyWith<_$_EmbedMessageEntity> get copyWith =>
      __$$_EmbedMessageEntityCopyWithImpl<_$_EmbedMessageEntity>(
          this, _$identity);
}

abstract class _EmbedMessageEntity implements EmbedMessageEntity {
  factory _EmbedMessageEntity(
      {@JsonKey(name: '_id')
          required final String id,
      required final List<AttachmentEntity> attachments,
      required final String content,
      required final String conversation,
      @JsonKey(name: 'is_poll')
          required final bool isPoll,
      required final String timestamp,
      required final ProfileEntity owner,
      required final String tag,
      required final int type,
      @JsonKey(name: 'edited_timestamp')
          required final String editedTimestamp}) = _$_EmbedMessageEntity;

  @override
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @override
  List<AttachmentEntity> get attachments => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  String get conversation => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_poll')
  bool get isPoll => throw _privateConstructorUsedError;
  @override // @JsonKey(name: 'is_pool') required bool isPool,
// required String organization,
  String get timestamp => throw _privateConstructorUsedError;
  @override
  ProfileEntity get owner => throw _privateConstructorUsedError;
  @override
  String get tag => throw _privateConstructorUsedError;
  @override
  int get type => throw _privateConstructorUsedError;
  @override // @JsonKey(name: '__v') required int v,
  @JsonKey(name: 'edited_timestamp')
  String get editedTimestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmbedMessageEntityCopyWith<_$_EmbedMessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessageEntity {
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  bool get after => throw _privateConstructorUsedError;
  List<AttachmentEntity> get attachments => throw _privateConstructorUsedError;
  bool get before => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  ConversationInsideMessageEntity get conversation =>
      throw _privateConstructorUsedError;
  bool get current => throw _privateConstructorUsedError;
  List<EmbedEntity> get embeds => throw _privateConstructorUsedError;
  bool get isPoll => throw _privateConstructorUsedError;
  List<ProfileEntity> get members => throw _privateConstructorUsedError;
  ProfileEntity? get owner => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get editedTimestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageEntityCopyWith<MessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageEntityCopyWith<$Res> {
  factory $MessageEntityCopyWith(
          MessageEntity value, $Res Function(MessageEntity) then) =
      _$MessageEntityCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') String id,
      bool after,
      List<AttachmentEntity> attachments,
      bool before,
      String timestamp,
      String content,
      ConversationInsideMessageEntity conversation,
      bool current,
      List<EmbedEntity> embeds,
      bool isPoll,
      List<ProfileEntity> members,
      ProfileEntity? owner,
      String tag,
      int type,
      String editedTimestamp});

  $ConversationInsideMessageEntityCopyWith<$Res> get conversation;
  $ProfileEntityCopyWith<$Res>? get owner;
}

/// @nodoc
class _$MessageEntityCopyWithImpl<$Res>
    implements $MessageEntityCopyWith<$Res> {
  _$MessageEntityCopyWithImpl(this._value, this._then);

  final MessageEntity _value;
  // ignore: unused_field
  final $Res Function(MessageEntity) _then;

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
              as List<AttachmentEntity>,
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
              as ConversationInsideMessageEntity,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool,
      embeds: embeds == freezed
          ? _value.embeds
          : embeds // ignore: cast_nullable_to_non_nullable
              as List<EmbedEntity>,
      isPoll: isPoll == freezed
          ? _value.isPoll
          : isPoll // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value.members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ProfileEntity>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
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
  $ConversationInsideMessageEntityCopyWith<$Res> get conversation {
    return $ConversationInsideMessageEntityCopyWith<$Res>(_value.conversation,
        (value) {
      return _then(_value.copyWith(conversation: value));
    });
  }

  @override
  $ProfileEntityCopyWith<$Res>? get owner {
    if (_value.owner == null) {
      return null;
    }

    return $ProfileEntityCopyWith<$Res>(_value.owner!, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$$_MessageEntityCopyWith<$Res>
    implements $MessageEntityCopyWith<$Res> {
  factory _$$_MessageEntityCopyWith(
          _$_MessageEntity value, $Res Function(_$_MessageEntity) then) =
      __$$_MessageEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') String id,
      bool after,
      List<AttachmentEntity> attachments,
      bool before,
      String timestamp,
      String content,
      ConversationInsideMessageEntity conversation,
      bool current,
      List<EmbedEntity> embeds,
      bool isPoll,
      List<ProfileEntity> members,
      ProfileEntity? owner,
      String tag,
      int type,
      String editedTimestamp});

  @override
  $ConversationInsideMessageEntityCopyWith<$Res> get conversation;
  @override
  $ProfileEntityCopyWith<$Res>? get owner;
}

/// @nodoc
class __$$_MessageEntityCopyWithImpl<$Res>
    extends _$MessageEntityCopyWithImpl<$Res>
    implements _$$_MessageEntityCopyWith<$Res> {
  __$$_MessageEntityCopyWithImpl(
      _$_MessageEntity _value, $Res Function(_$_MessageEntity) _then)
      : super(_value, (v) => _then(v as _$_MessageEntity));

  @override
  _$_MessageEntity get _value => super._value as _$_MessageEntity;

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
    return _then(_$_MessageEntity(
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
              as List<AttachmentEntity>,
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
              as ConversationInsideMessageEntity,
      current: current == freezed
          ? _value.current
          : current // ignore: cast_nullable_to_non_nullable
              as bool,
      embeds: embeds == freezed
          ? _value._embeds
          : embeds // ignore: cast_nullable_to_non_nullable
              as List<EmbedEntity>,
      isPoll: isPoll == freezed
          ? _value.isPoll
          : isPoll // ignore: cast_nullable_to_non_nullable
              as bool,
      members: members == freezed
          ? _value._members
          : members // ignore: cast_nullable_to_non_nullable
              as List<ProfileEntity>,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileEntity?,
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

class _$_MessageEntity implements _MessageEntity {
  _$_MessageEntity(
      {@JsonKey(name: '_id') required this.id,
      required this.after,
      required final List<AttachmentEntity> attachments,
      required this.before,
      required this.timestamp,
      required this.content,
      required this.conversation,
      required this.current,
      required final List<EmbedEntity> embeds,
      required this.isPoll,
      required final List<ProfileEntity> members,
      this.owner,
      required this.tag,
      required this.type,
      required this.editedTimestamp})
      : _attachments = attachments,
        _embeds = embeds,
        _members = members;

  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final bool after;
  final List<AttachmentEntity> _attachments;
  @override
  List<AttachmentEntity> get attachments {
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
  final ConversationInsideMessageEntity conversation;
  @override
  final bool current;
  final List<EmbedEntity> _embeds;
  @override
  List<EmbedEntity> get embeds {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_embeds);
  }

  @override
  final bool isPoll;
  final List<ProfileEntity> _members;
  @override
  List<ProfileEntity> get members {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_members);
  }

  @override
  final ProfileEntity? owner;
  @override
  final String tag;
  @override
  final int type;
  @override
  final String editedTimestamp;

  @override
  String toString() {
    return 'MessageEntity(id: $id, after: $after, attachments: $attachments, before: $before, timestamp: $timestamp, content: $content, conversation: $conversation, current: $current, embeds: $embeds, isPoll: $isPoll, members: $members, owner: $owner, tag: $tag, type: $type, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageEntity &&
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
  _$$_MessageEntityCopyWith<_$_MessageEntity> get copyWith =>
      __$$_MessageEntityCopyWithImpl<_$_MessageEntity>(this, _$identity);
}

abstract class _MessageEntity implements MessageEntity {
  factory _MessageEntity(
      {@JsonKey(name: '_id') required final String id,
      required final bool after,
      required final List<AttachmentEntity> attachments,
      required final bool before,
      required final String timestamp,
      required final String content,
      required final ConversationInsideMessageEntity conversation,
      required final bool current,
      required final List<EmbedEntity> embeds,
      required final bool isPoll,
      required final List<ProfileEntity> members,
      final ProfileEntity? owner,
      required final String tag,
      required final int type,
      required final String editedTimestamp}) = _$_MessageEntity;

  @override
  @JsonKey(name: '_id')
  String get id => throw _privateConstructorUsedError;
  @override
  bool get after => throw _privateConstructorUsedError;
  @override
  List<AttachmentEntity> get attachments => throw _privateConstructorUsedError;
  @override
  bool get before => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  ConversationInsideMessageEntity get conversation =>
      throw _privateConstructorUsedError;
  @override
  bool get current => throw _privateConstructorUsedError;
  @override
  List<EmbedEntity> get embeds => throw _privateConstructorUsedError;
  @override
  bool get isPoll => throw _privateConstructorUsedError;
  @override
  List<ProfileEntity> get members => throw _privateConstructorUsedError;
  @override
  ProfileEntity? get owner => throw _privateConstructorUsedError;
  @override
  String get tag => throw _privateConstructorUsedError;
  @override
  int get type => throw _privateConstructorUsedError;
  @override
  String get editedTimestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MessageEntityCopyWith<_$_MessageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmbedEntity {
  String get id => throw _privateConstructorUsedError;
  List<AttachmentEntity> get attachments => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  EmbedMessageEntity get message => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  ProfileEntity get owner => throw _privateConstructorUsedError;
  String get tag => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String get editedTimestamp => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmbedEntityCopyWith<EmbedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmbedEntityCopyWith<$Res> {
  factory $EmbedEntityCopyWith(
          EmbedEntity value, $Res Function(EmbedEntity) then) =
      _$EmbedEntityCopyWithImpl<$Res>;
  $Res call(
      {String id,
      List<AttachmentEntity> attachments,
      String description,
      EmbedMessageEntity message,
      String timestamp,
      ProfileEntity owner,
      String tag,
      int type,
      String editedTimestamp});

  $EmbedMessageEntityCopyWith<$Res> get message;
  $ProfileEntityCopyWith<$Res> get owner;
}

/// @nodoc
class _$EmbedEntityCopyWithImpl<$Res> implements $EmbedEntityCopyWith<$Res> {
  _$EmbedEntityCopyWithImpl(this._value, this._then);

  final EmbedEntity _value;
  // ignore: unused_field
  final $Res Function(EmbedEntity) _then;

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
              as List<AttachmentEntity>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as EmbedMessageEntity,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
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
  $EmbedMessageEntityCopyWith<$Res> get message {
    return $EmbedMessageEntityCopyWith<$Res>(_value.message, (value) {
      return _then(_value.copyWith(message: value));
    });
  }

  @override
  $ProfileEntityCopyWith<$Res> get owner {
    return $ProfileEntityCopyWith<$Res>(_value.owner, (value) {
      return _then(_value.copyWith(owner: value));
    });
  }
}

/// @nodoc
abstract class _$$_EmbedEntityCopyWith<$Res>
    implements $EmbedEntityCopyWith<$Res> {
  factory _$$_EmbedEntityCopyWith(
          _$_EmbedEntity value, $Res Function(_$_EmbedEntity) then) =
      __$$_EmbedEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      List<AttachmentEntity> attachments,
      String description,
      EmbedMessageEntity message,
      String timestamp,
      ProfileEntity owner,
      String tag,
      int type,
      String editedTimestamp});

  @override
  $EmbedMessageEntityCopyWith<$Res> get message;
  @override
  $ProfileEntityCopyWith<$Res> get owner;
}

/// @nodoc
class __$$_EmbedEntityCopyWithImpl<$Res> extends _$EmbedEntityCopyWithImpl<$Res>
    implements _$$_EmbedEntityCopyWith<$Res> {
  __$$_EmbedEntityCopyWithImpl(
      _$_EmbedEntity _value, $Res Function(_$_EmbedEntity) _then)
      : super(_value, (v) => _then(v as _$_EmbedEntity));

  @override
  _$_EmbedEntity get _value => super._value as _$_EmbedEntity;

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
    return _then(_$_EmbedEntity(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: attachments == freezed
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<AttachmentEntity>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as EmbedMessageEntity,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      owner: owner == freezed
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as ProfileEntity,
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

class _$_EmbedEntity implements _EmbedEntity {
  _$_EmbedEntity(
      {required this.id,
      required final List<AttachmentEntity> attachments,
      required this.description,
      required this.message,
      required this.timestamp,
      required this.owner,
      required this.tag,
      required this.type,
      required this.editedTimestamp})
      : _attachments = attachments;

  @override
  final String id;
  final List<AttachmentEntity> _attachments;
  @override
  List<AttachmentEntity> get attachments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  final String description;
  @override
  final EmbedMessageEntity message;
  @override
  final String timestamp;
  @override
  final ProfileEntity owner;
  @override
  final String tag;
  @override
  final int type;
  @override
  final String editedTimestamp;

  @override
  String toString() {
    return 'EmbedEntity(id: $id, attachments: $attachments, description: $description, message: $message, timestamp: $timestamp, owner: $owner, tag: $tag, type: $type, editedTimestamp: $editedTimestamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmbedEntity &&
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
  _$$_EmbedEntityCopyWith<_$_EmbedEntity> get copyWith =>
      __$$_EmbedEntityCopyWithImpl<_$_EmbedEntity>(this, _$identity);
}

abstract class _EmbedEntity implements EmbedEntity {
  factory _EmbedEntity(
      {required final String id,
      required final List<AttachmentEntity> attachments,
      required final String description,
      required final EmbedMessageEntity message,
      required final String timestamp,
      required final ProfileEntity owner,
      required final String tag,
      required final int type,
      required final String editedTimestamp}) = _$_EmbedEntity;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  List<AttachmentEntity> get attachments => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  EmbedMessageEntity get message => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  ProfileEntity get owner => throw _privateConstructorUsedError;
  @override
  String get tag => throw _privateConstructorUsedError;
  @override
  int get type => throw _privateConstructorUsedError;
  @override
  String get editedTimestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmbedEntityCopyWith<_$_EmbedEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

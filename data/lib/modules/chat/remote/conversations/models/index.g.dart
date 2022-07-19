// GENERATED CODE - DO NOT MODIFY BY HAND

part of conversations_models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConversationApiDto _$$_ConversationApiDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ConversationApiDto(
      id: json['_id'] as String,
      name: json['name'] as String,
      pictureUrl: json['picture_url'] as String,
      type: json['type'] as int,
      public: json['public'] as bool,
      members: (json['members'] as List<dynamic>)
          .map((e) => ProfileApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      unread: json['unread'] as int,
      membersCount: json['members_count'] as int,
      owner: ProfileApiDto.fromJson(json['owner'] as Map<String, dynamic>),
      picture: json['picture'] == null
          ? null
          : PictureApiDto.fromJson(json['picture'] as Map<String, dynamic>),
      message: json['message'] == null
          ? null
          : EmbedMessageApiDto.fromJson(
              json['message'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
      editedTimestamp: json['edited_timestamp'] as String,
    );

Map<String, dynamic> _$$_ConversationApiDtoToJson(
        _$_ConversationApiDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'picture_url': instance.pictureUrl,
      'type': instance.type,
      'public': instance.public,
      'members': instance.members,
      'unread': instance.unread,
      'members_count': instance.membersCount,
      'owner': instance.owner,
      'picture': instance.picture,
      'message': instance.message,
      'timestamp': instance.timestamp,
      'edited_timestamp': instance.editedTimestamp,
    };

_$_ConversationEventApiDto _$$_ConversationEventApiDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ConversationEventApiDto(
      event: json['event'] as String,
      conversation: ConversationWebSocketApiDto.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ConversationEventApiDtoToJson(
        _$_ConversationEventApiDto instance) =>
    <String, dynamic>{
      'event': instance.event,
      'data': instance.conversation,
    };

_$_ConversationInsideMessageApiDto _$$_ConversationInsideMessageApiDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ConversationInsideMessageApiDto(
      id: json['_id'] as String,
      name: json['name'] as String,
      pictureUrl: json['picture_url'] as String,
      type: json['type'] as int,
      public: json['public'] as bool,
      members:
          (json['members'] as List<dynamic>).map((e) => e as String).toList(),
      unread: json['unread'] as int,
      membersCount: json['members_count'] as int,
      owner: json['owner'] as String,
      message: json['message'] as String?,
      timestamp: json['timestamp'] as String,
      editedTimestamp: json['edited_timestamp'] as String,
    );

Map<String, dynamic> _$$_ConversationInsideMessageApiDtoToJson(
        _$_ConversationInsideMessageApiDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'picture_url': instance.pictureUrl,
      'type': instance.type,
      'public': instance.public,
      'members': instance.members,
      'unread': instance.unread,
      'members_count': instance.membersCount,
      'owner': instance.owner,
      'message': instance.message,
      'timestamp': instance.timestamp,
      'edited_timestamp': instance.editedTimestamp,
    };

_$_ConversationWebSocketApiDto _$$_ConversationWebSocketApiDtoFromJson(
        Map<String, dynamic> json) =>
    _$_ConversationWebSocketApiDto(
      id: json['_id'] as String,
      name: json['name'] as String,
      pictureUrl: json['picture_url'] as String,
      type: json['type'] as int,
      public: json['public'] as bool,
      members: (json['members'] as List<dynamic>)
          .map((e) => ProfileApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      unread: json['unread'] as int?,
      membersCount: json['members_count'] as int,
      owner: ProfileApiDto.fromJson(json['owner'] as Map<String, dynamic>),
      message: json['message'] as String?,
      timestamp: json['timestamp'] as String,
      editedTimestamp: json['edited_timestamp'] as String,
    );

Map<String, dynamic> _$$_ConversationWebSocketApiDtoToJson(
        _$_ConversationWebSocketApiDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'picture_url': instance.pictureUrl,
      'type': instance.type,
      'public': instance.public,
      'members': instance.members,
      'unread': instance.unread,
      'members_count': instance.membersCount,
      'owner': instance.owner,
      'message': instance.message,
      'timestamp': instance.timestamp,
      'edited_timestamp': instance.editedTimestamp,
    };

_$_PictureApiDto _$$_PictureApiDtoFromJson(Map<String, dynamic> json) =>
    _$_PictureApiDto(
      id: json['_id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      extension: json['extension'] as String,
      mimetype: json['mimetype'] as String,
      size: json['size'] as int,
      type: json['type'] as int,
      width: json['width'] as int,
      height: json['height'] as int,
      owner: json['owner'] as String,
      attributes:
          Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      fileId: json['file_id'] as String?,
      fileName: json['filename'] as String,
      timestamp: json['timestamp'] as String,
      editedTimestamp: json['edited_timestamp'] as String,
    );

Map<String, dynamic> _$$_PictureApiDtoToJson(_$_PictureApiDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'extension': instance.extension,
      'mimetype': instance.mimetype,
      'size': instance.size,
      'type': instance.type,
      'width': instance.width,
      'height': instance.height,
      'owner': instance.owner,
      'attributes': instance.attributes,
      'file_id': instance.fileId,
      'filename': instance.fileName,
      'timestamp': instance.timestamp,
      'edited_timestamp': instance.editedTimestamp,
    };

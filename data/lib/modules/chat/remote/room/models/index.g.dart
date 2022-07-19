// GENERATED CODE - DO NOT MODIFY BY HAND

part of room_models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AttachmentApiDto _$$_AttachmentApiDtoFromJson(Map<String, dynamic> json) =>
    _$_AttachmentApiDto(
      id: json['_id'] as String,
      filename: json['filename'] as String,
      name: json['name'] as String,
      size: json['size'] as String,
      width: json['width'] as int,
      height: json['height'] as int,
      type: json['type'] as int,
      extension: json['extension'] as String,
      url: json['url'] as String,
      mimetype: json['mimetype'] as String,
      timestamp: json['timestamp'] as String,
      editedTimestamp: json['edited_timestamp'] as String,
      owner: ProfileApiDto.fromJson(json['owner'] as Map<String, dynamic>),
      conversation: ConversationApiDto.fromJson(
          json['conversation'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$_AttachmentApiDtoToJson(_$_AttachmentApiDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'filename': instance.filename,
      'name': instance.name,
      'size': instance.size,
      'width': instance.width,
      'height': instance.height,
      'type': instance.type,
      'extension': instance.extension,
      'url': instance.url,
      'mimetype': instance.mimetype,
      'timestamp': instance.timestamp,
      'edited_timestamp': instance.editedTimestamp,
      'owner': instance.owner,
      'conversation': instance.conversation,
      'message': instance.message,
    };

_$_EmbedMessageApiDto _$$_EmbedMessageApiDtoFromJson(
        Map<String, dynamic> json) =>
    _$_EmbedMessageApiDto(
      id: json['_id'] as String,
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      content: json['content'] as String,
      conversation: json['conversation'] as String,
      isPoll: json['is_poll'] as bool,
      timestamp: json['timestamp'] as String,
      owner: ProfileApiDto.fromJson(json['owner'] as Map<String, dynamic>),
      tag: json['tag'] as String,
      type: json['type'] as int,
      editedTimestamp: json['edited_timestamp'] as String,
    );

Map<String, dynamic> _$$_EmbedMessageApiDtoToJson(
        _$_EmbedMessageApiDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'attachments': instance.attachments,
      'content': instance.content,
      'conversation': instance.conversation,
      'is_poll': instance.isPoll,
      'timestamp': instance.timestamp,
      'owner': instance.owner,
      'tag': instance.tag,
      'type': instance.type,
      'edited_timestamp': instance.editedTimestamp,
    };

_$_EmbedApiDto _$$_EmbedApiDtoFromJson(Map<String, dynamic> json) =>
    _$_EmbedApiDto(
      id: json['_id'] as String,
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => AttachmentApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String,
      message:
          EmbedMessageApiDto.fromJson(json['message'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String,
      owner: ProfileApiDto.fromJson(json['owner'] as Map<String, dynamic>),
      tag: json['tag'] as String,
      type: json['type'] as int,
      editedTimestamp: json['edited_timestamp'] as String,
    );

Map<String, dynamic> _$$_EmbedApiDtoToJson(_$_EmbedApiDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'attachments': instance.attachments,
      'description': instance.description,
      'message': instance.message,
      'timestamp': instance.timestamp,
      'owner': instance.owner,
      'tag': instance.tag,
      'type': instance.type,
      'edited_timestamp': instance.editedTimestamp,
    };

_$_MessageApiDto _$$_MessageApiDtoFromJson(Map<String, dynamic> json) =>
    _$_MessageApiDto(
      id: json['_id'] as String,
      after: json['after'] as bool,
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => AttachmentApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      before: json['before'] as bool,
      timestamp: json['timestamp'] as String,
      content: json['content'] as String,
      conversation: ConversationInsideMessageApiDto.fromJson(
          json['conversation'] as Map<String, dynamic>),
      current: json['current'] as bool,
      embeds: (json['embeds'] as List<dynamic>)
          .map((e) => EmbedApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPoll: json['is_poll'] as bool,
      members: (json['members'] as List<dynamic>)
          .map((e) => ProfileApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      owner: json['owner'] == null
          ? null
          : ProfileApiDto.fromJson(json['owner'] as Map<String, dynamic>),
      tag: json['tag'] as String,
      type: json['type'] as int,
      editedTimestamp: json['edited_timestamp'] as String,
    );

Map<String, dynamic> _$$_MessageApiDtoToJson(_$_MessageApiDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'after': instance.after,
      'attachments': instance.attachments,
      'before': instance.before,
      'timestamp': instance.timestamp,
      'content': instance.content,
      'conversation': instance.conversation,
      'current': instance.current,
      'embeds': instance.embeds,
      'is_poll': instance.isPoll,
      'members': instance.members,
      'owner': instance.owner,
      'tag': instance.tag,
      'type': instance.type,
      'edited_timestamp': instance.editedTimestamp,
    };

part of room_entities;

@freezed
class MessageEntity with _$MessageEntity {
  factory MessageEntity({
    @JsonKey(name: '_id') required String id,
    required bool after,
    required List<AttachmentEntity> attachments,
    required bool before,
    required String timestamp,
    required String content,
    required ConversationInsideMessageEntity conversation,
    required bool current,
    required List<EmbedEntity> embeds,
    required bool isPoll,
    required List<ProfileEntity> members,
    ProfileEntity? owner,
    required String tag,
    required int type,
    required String editedTimestamp,
  }) = _MessageEntity;

}
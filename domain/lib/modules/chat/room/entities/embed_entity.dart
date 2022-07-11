part of room_entities;

@freezed
class EmbedEntity with _$EmbedEntity {
  factory EmbedEntity({
    required String id,
    required List<AttachmentEntity> attachments,
    required String description,
    required EmbedMessageEntity message,
    required String timestamp,
    required ProfileEntity owner,
    required String tag,
    required int type,
    required String editedTimestamp
  }) = _EmbedEntity;
}
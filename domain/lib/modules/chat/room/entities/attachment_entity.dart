part of room_entities;


@freezed
class AttachmentEntity with _$AttachmentEntity {
  factory AttachmentEntity({
   required String id,
    required String filename,
    required String name,
    required String size,
    required int width,
    required int height,
    required int type,
    required String extension,
    required String url,
    required String mimetype,
    required String timestamp,
    required String editedTimestamp,
    required ProfileEntity owner,
    required ConversationEntity conversation,
    required String message
  }) = _AttachmentEntity;
}
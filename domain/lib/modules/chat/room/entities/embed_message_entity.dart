part of room_entities;

@freezed
class EmbedMessageEntity with _$EmbedMessageEntity {
  factory EmbedMessageEntity({
    @JsonKey(name: '_id') required String id,
    required List<AttachmentEntity> attachments,
    required String content,
    required String conversation,
    @JsonKey(name: 'is_poll') required bool isPoll,
    // @JsonKey(name: 'is_pool') required bool isPool,
    // required String organization,
    required String timestamp,
    required ProfileEntity owner,
    required String tag,
    required int type,
    // @JsonKey(name: '__v') required int v,
    @JsonKey(name: 'edited_timestamp') required String editedTimestamp,
  }) = _EmbedMessageEntity;
}
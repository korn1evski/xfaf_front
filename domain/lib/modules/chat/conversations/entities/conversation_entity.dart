part of conversations_entities;

@freezed
class ConversationEntity with _$ConversationEntity {
  factory ConversationEntity({
    required String id,
    required String name,
    required String pictureUrl,
    required int type,
    required bool public,
    required int unread,
    required List<ProfileEntity> members,
    required int membersCount,
    required ProfileEntity owner,
    EmbedMessageEntity? message,
    required String timestamp,
     required String editedTimestamp,
  }) = _ConversationEntity;
}

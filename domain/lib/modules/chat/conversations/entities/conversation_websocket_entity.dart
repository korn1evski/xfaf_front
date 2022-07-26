part of conversations_entities;

@freezed
class ConversationWebSocketEntity with _$ConversationWebSocketEntity {
  factory ConversationWebSocketEntity({
    required String id,
    required String name,
    required String pictureUrl,
    String? picture,
    required int type,
    required bool public,
    required List<ProfileEntity> members,
    int? unread,
     required int membersCount,
    required ProfileEntity owner,
    String? message,
    required String timestamp,
    required String editedTimestamp,
  }) = _ConversationWebSocketEntity;

}

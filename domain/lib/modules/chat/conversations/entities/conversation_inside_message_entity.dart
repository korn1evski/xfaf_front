part of conversations_entities;

@freezed
class ConversationInsideMessageEntity with _$ConversationInsideMessageEntity {
  factory ConversationInsideMessageEntity({
    @JsonKey(name: '_id') required String id,
    required String name,
    @JsonKey(name: 'picture_url') required String pictureUrl,
    required int type,
    required bool public,
    required List<String> members,
    required int unread,
    @JsonKey(name: 'members_count') required int membersCount,
    required String owner,
    String? message,
    required String timestamp,
    @JsonKey(name: 'edited_timestamp')  required String editedTimestamp,
  }) = _ConversationInsideMessageEntity;
}

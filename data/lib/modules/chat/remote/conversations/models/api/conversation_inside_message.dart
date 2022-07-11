part of conversations_models;

@freezed
class ConversationInsideMessageApiDto with _$ConversationInsideMessageApiDto {
  factory ConversationInsideMessageApiDto({
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
  }) = _ConversationInsideMessageApiDto;

  factory ConversationInsideMessageApiDto.fromJson(Map<String, dynamic> json) => _$ConversationInsideMessageApiDtoFromJson(json);
}

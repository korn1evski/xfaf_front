part of conversations_models;

@freezed
class ConversationWebSocketApiDto with _$ConversationWebSocketApiDto {
  factory ConversationWebSocketApiDto({
    @JsonKey(name: '_id') required String id,
    required String name,
    @JsonKey(name: 'picture_url') required String pictureUrl,
    String? picture,
    required int type,
    required bool public,
    required List<ProfileApiDto> members,
    int? unread,
    @JsonKey(name: 'members_count') required int membersCount,
    required ProfileApiDto owner,
    String? message,
    required String timestamp,
    @JsonKey(name: 'edited_timestamp')  required String editedTimestamp,
  }) = _ConversationWebSocketApiDto;

  factory ConversationWebSocketApiDto.fromJson(Map<String, dynamic> json) => _$ConversationWebSocketApiDtoFromJson(json);
}

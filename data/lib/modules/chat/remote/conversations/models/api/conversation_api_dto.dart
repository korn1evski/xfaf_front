part of conversations_models;

@freezed
class ConversationApiDto with _$ConversationApiDto {
  factory ConversationApiDto({
    @JsonKey(name: '_id') required String id,
    required String name,
    @JsonKey(name: 'picture_url') required String pictureUrl,
    required int type,
    required bool public,
    required List<ProfileApiDto> members,
    required int unread,
    @JsonKey(name: 'members_count') required int membersCount,
    required ProfileApiDto owner,
    PictureApiDto? picture,
    EmbedMessageApiDto? message,
    required String timestamp,
    @JsonKey(name: 'edited_timestamp')  required String editedTimestamp,
  }) = _ConversationApiDto;

  factory ConversationApiDto.fromJson(Map<String, dynamic> json) => _$ConversationApiDtoFromJson(json);
}

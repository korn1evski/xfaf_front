part of room_models;

@freezed
class MessageApiDto with _$MessageApiDto {
  factory MessageApiDto({
    @JsonKey(name: '_id') required String id,
    required bool after,
    required List<PictureApiDto> attachments,
    required bool before,
    required String timestamp,
    required String content,
    required ConversationInsideMessageApiDto conversation,
    required bool current,
    required List<EmbedApiDto> embeds,
    @JsonKey(name: 'is_poll') required bool isPoll,
    required List<ProfileApiDto> members,
    ProfileApiDto? owner,
    required String tag,
    required int type,
    @JsonKey(name: 'edited_timestamp')  required String editedTimestamp,
  }) = _MessageApiDto;

  factory MessageApiDto.fromJson(Map<String, dynamic> json) => _$MessageApiDtoFromJson(json);
}
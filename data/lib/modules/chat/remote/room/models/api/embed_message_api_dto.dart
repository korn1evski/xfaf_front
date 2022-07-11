part of room_models;

@freezed
class EmbedMessageApiDto with _$EmbedMessageApiDto {
  factory EmbedMessageApiDto({
    @JsonKey(name: '_id') required String id,
    required List<AttachmentApiDto> attachments,
    required String content,
    required String conversation,
    @JsonKey(name: 'is_poll') required bool isPoll,
    // @JsonKey(name: 'is_pool') required bool isPool,
    // required String organization,
    required String timestamp,
    required ProfileApiDto owner,
    required String tag,
    required int type,
    // @JsonKey(name: '__v') required int v,
    @JsonKey(name: 'edited_timestamp') required String editedTimestamp,
  }) = _EmbedMessageApiDto;

  factory EmbedMessageApiDto.fromJson(Map<String, dynamic> json) => _$EmbedMessageApiDtoFromJson(json);
}
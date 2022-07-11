part of room_models;


@freezed
class EmbedApiDto with _$EmbedApiDto {
  factory EmbedApiDto({
    @JsonKey(name: '_id') required String id,
    required List<AttachmentApiDto> attachments,
    required String description,
    required EmbedMessageApiDto message,
    required String timestamp,
    required ProfileApiDto owner,
    required String tag,
    required int type,
    @JsonKey(name: 'edited_timestamp') required String editedTimestamp
  }) = _EmbedApiDto;

  factory EmbedApiDto.fromJson(Map<String, dynamic> json) => _$EmbedApiDtoFromJson(json);
}
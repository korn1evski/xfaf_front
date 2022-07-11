part of room_models;


@freezed
class AttachmentApiDto with _$AttachmentApiDto {
  factory AttachmentApiDto({
    @JsonKey(name: '_id') required String id,
    required String filename,
    required String name,
    required String size,
    required int width,
    required int height,
    required int type,
    required String extension,
    required String url,
    required String mimetype,
    required String timestamp,
    @JsonKey(name: 'edited_timestamp')  required String editedTimestamp,
    required ProfileApiDto owner,
    required ConversationApiDto conversation,
    required String message
  }) = _AttachmentApiDto;

  factory AttachmentApiDto.fromJson(Map<String, dynamic> json) => _$AttachmentApiDtoFromJson(json);
}
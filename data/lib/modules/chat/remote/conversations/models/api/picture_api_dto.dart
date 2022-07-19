part of conversations_models;

@freezed
class PictureApiDto with _$PictureApiDto {
  factory PictureApiDto({
    @JsonKey(name: '_id') required String id,
    required String name,
    required String url,
    required String extension,
    required String mimetype,
    required int size,
    required int type,
    required int width,
    required int height,
    required String owner,
    required Attributes attributes,
    @JsonKey(name: 'file_id') String? fileId,
    @JsonKey(name: 'filename') required String fileName,
    required String timestamp,
    @JsonKey(name: 'edited_timestamp')  required String editedTimestamp,
  }) = _PictureApiDto;

  factory PictureApiDto.fromJson(Map<String, dynamic> json) => _$PictureApiDtoFromJson(json);
}

class Attributes {
  Attributes({
    required this.width,
    required this.height,
  });

  int width;
  int height;

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
    width: json["width"],
    height: json["height"],
  );

  Map<String, dynamic> toJson() => {
    "width": width,
    "height": height,
  };
}


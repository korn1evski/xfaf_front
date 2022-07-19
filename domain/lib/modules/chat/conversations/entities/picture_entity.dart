part of conversations_entities;

@freezed
class PictureEntity with _$PictureEntity {
  factory PictureEntity({
    required String id,
    required String name,
    required String url,
    required String extension,
    required String mimetype,
    required int size,
    required int type,
    required int width,
    required int height,
    required String owner,
    String? fileId,
    required String fileName,
    required String timestamp,
   required String editedTimestamp,
  }) = _PictureEntity;

}

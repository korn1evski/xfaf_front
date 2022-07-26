import 'package:domain/modules/chat/conversations/entities/index.dart';

import '../../../chat/remote/conversations/models/index.dart';

class AttachmentsMapper{
  PictureEntity pictureEntityFromDto(PictureApiDto pictureDto) {
    return PictureEntity(id: pictureDto.id,
        name: pictureDto.name,
        url: pictureDto.url,
        extension: pictureDto.extension,
        mimetype: pictureDto.mimetype,
        size: pictureDto.size,
        type: pictureDto.type,
        width: pictureDto.width,
        height: pictureDto.height,
        owner: pictureDto.owner,
        fileId: pictureDto.fileId,
        fileName: pictureDto.fileName,
        timestamp: pictureDto.timestamp,
        editedTimestamp: pictureDto.editedTimestamp);
  }

  List<PictureEntity> pictureListFromDto(List<PictureApiDto> pictures){
    List<PictureEntity> picturesEntities = [];
    pictures.forEach((element) {
      picturesEntities.add(pictureEntityFromDto(element));
    });

    return picturesEntities;

  }
}
import 'dart:ui';

import 'package:data/modules/chat/remote/conversations/models/index.dart';
import 'package:data/modules/chat/remote/profile/models/mappers/profile_mapper.dart';
import 'package:data/modules/chat/remote/room/models/index.dart';
import 'package:data/modules/chat/remote/room/models/mappers/room_mapper.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/chat/room/entities/index.dart';

class ConversationsMapper {
  List<ConversationEntity> listConversationsApiToEntities(
      List<ConversationApiDto> conversationDtos) {
    List<ConversationEntity> conversationEntities = [];
    conversationDtos.forEach((element) {
      final List<ProfileEntity> members = [];
      element.members.forEach((element) {
        members.add(ProfileMapper().profileEntityFromApiDto(element));
      });
      conversationEntities.add(ConversationEntity(
          id: element.id,
          name: element.name,
          unread: element.unread,
          pictureUrl: element.pictureUrl,
          type: element.type,
          public: element.public,
          members: members,
          membersCount: element.membersCount,
          owner: ProfileMapper().profileEntityFromApiDto(element.owner),
          picture: element.picture != null ? pictureEntityFromDto(element.picture!) : null,
          message: element.message != null ? RoomMapper()
              .embedMessageEntityFromDto(element.message!) : null,
          timestamp: element.timestamp,
          editedTimestamp: element.editedTimestamp));
    });
    return conversationEntities;
  }

  ConversationEntity conversationEntityFromDto(ConversationApiDto element) {
    PictureEntity? pictureEntity;
    if(element.picture != null){
      pictureEntity = pictureEntityFromDto(element.picture!);
    }
    return ConversationEntity(

        id: element.id,
        name: element.name,
        unread: element.unread,
        picture: pictureEntity ,
        pictureUrl: element.pictureUrl,
        type: element.type,
        public: element.public,
        members: ProfileMapper().listProfileToEntity(element.members),
        membersCount: element.membersCount,
        owner: ProfileMapper().profileEntityFromApiDto(element.owner),
        message: element.message != null ? RoomMapper()
            .embedMessageEntityFromDto(element.message!) : null,
        timestamp: element.timestamp,
        editedTimestamp: element.editedTimestamp);
  }

  ConversationInsideMessageEntity conversationInsideMessageToEntity(
      ConversationInsideMessageApiDto element) {
    return ConversationInsideMessageEntity(
        id: element.id,
        name: element.name,
        unread: element.unread,
        pictureUrl: element.pictureUrl,
        type: element.type,
        public: element.public,
        members: element.members,
        membersCount: element.membersCount,
        owner: element.owner,
        message: element.message,
        timestamp: element.timestamp,
        editedTimestamp: element.editedTimestamp);
  }

  ConversationWebSocketEntity conversationWebSocketToEntity(
      ConversationWebSocketApiDto apiDto) {
    return ConversationWebSocketEntity(
        id: apiDto.id,
        name: apiDto.name,
        pictureUrl: apiDto.pictureUrl,
        type: apiDto.type,
        public: apiDto.public,
        members: ProfileMapper().listProfileToEntity(apiDto.members),
        unread: apiDto.unread,
        membersCount: apiDto.membersCount,
        owner: ProfileMapper().profileEntityFromApiDto(apiDto.owner),
        message: apiDto.message,
        timestamp: apiDto.timestamp,
        editedTimestamp: apiDto.editedTimestamp);
  }

  ConversationEventEntity conversationEventToEntity(
      ConversationEventApiDto conversationEventApiDto) {
    return ConversationEventEntity(
        event: conversationEventApiDto.event,
        conversation: conversationWebSocketToEntity(
            conversationEventApiDto.conversation));
  }

  ConversationEntity conversationWebSocketDtoToConversationEntity(
      ConversationWebSocketEntity conversationWebSocketEntity, String message) {
    return ConversationEntity(
        id: conversationWebSocketEntity.id,
        message: EmbedMessageEntity(
            id: conversationWebSocketEntity.message != null
                ? conversationWebSocketEntity.message!
                : '',
            attachments: [],
            content: message,
            conversation: conversationWebSocketEntity.id,
            isPoll: false,
            timestamp: conversationWebSocketEntity.timestamp,
            owner: conversationWebSocketEntity.owner,
            tag: '',
            type: 1,
            editedTimestamp: conversationWebSocketEntity.editedTimestamp),
        name: conversationWebSocketEntity.name,
        pictureUrl: conversationWebSocketEntity.pictureUrl,
        type: conversationWebSocketEntity.type,
        public: conversationWebSocketEntity.public,
        unread: conversationWebSocketEntity.unread ?? 0,
        members: conversationWebSocketEntity.members,
        membersCount: conversationWebSocketEntity.membersCount,
        owner: conversationWebSocketEntity.owner,
        timestamp: conversationWebSocketEntity.timestamp,
        editedTimestamp: conversationWebSocketEntity.editedTimestamp);
  }

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
import 'package:data/modules/chat/remote/conversations/models/index.dart';
import 'package:data/modules/chat/remote/conversations/models/mappers/conversations_mapper.dart';
import 'package:data/modules/chat/remote/profile/models/mappers/profile_mapper.dart';
import 'package:data/modules/chat/remote/room/models/index.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/room/entities/index.dart';

class RoomMapper {
  AttachmentEntity attachmentFromDto(AttachmentApiDto attachmentApiDto) {
    return AttachmentEntity(id: attachmentApiDto.id,
        filename: attachmentApiDto.filename,
        name: attachmentApiDto.name,
        size: attachmentApiDto.size,
        width: attachmentApiDto.width,
        height: attachmentApiDto.height,
        type: attachmentApiDto.type,
        extension: attachmentApiDto.extension,
        url: attachmentApiDto.url,
        mimetype: attachmentApiDto.mimetype,
        timestamp: attachmentApiDto.timestamp,
        editedTimestamp: attachmentApiDto.editedTimestamp,
        owner: ProfileMapper().profileEntityFromApiDto(attachmentApiDto.owner),
        conversation: ConversationsMapper().conversationEntityFromDto(attachmentApiDto.conversation),
        message: attachmentApiDto.message);
  }

  List<AttachmentEntity> attachmentListToEntity(List<AttachmentApiDto> attachmentsDto) {
    List<AttachmentEntity> attachmentEntities = [];

    attachmentsDto.forEach((element) {
      attachmentEntities.add(attachmentFromDto(element));
    });

    return attachmentEntities;
  }

  EmbedMessageEntity embedMessageEntityFromDto(EmbedMessageApiDto messageApiDto) {
    return EmbedMessageEntity(
        id: messageApiDto.id,
        attachments: messageApiDto.attachments,
        content: messageApiDto.content,
        conversation: messageApiDto.conversation,
        isPoll: messageApiDto.isPoll,
        timestamp: messageApiDto.timestamp,
        owner: ProfileMapper().profileEntityFromApiDto(messageApiDto.owner),
        tag: messageApiDto.tag,
        type: messageApiDto.type,
        editedTimestamp: messageApiDto.editedTimestamp);
  }

  EmbedEntity embedFromApiDto(EmbedApiDto embedApiDto) {
    return EmbedEntity(id: embedApiDto.id,
        attachments: attachmentListToEntity(embedApiDto.attachments),
        description: embedApiDto.description,
        message: embedMessageEntityFromDto(embedApiDto.message),
        timestamp: embedApiDto.timestamp,
        owner: ProfileMapper().profileEntityFromApiDto(embedApiDto.owner),
        tag: embedApiDto.tag,
        type: embedApiDto.type,
        editedTimestamp: embedApiDto.editedTimestamp);
  }

  List<EmbedEntity> embedListFromApiDto(List<EmbedApiDto> embedDtos) {
    List<EmbedEntity> entities = [];

    embedDtos.forEach((element) {
      entities.add(embedFromApiDto(element));
    });

    return entities;
  }

  MessageEntity messageFromDto(MessageApiDto messageApiDto) {
    return MessageEntity(id: messageApiDto.id,
        after: messageApiDto.after,
        attachments: attachmentListToEntity(messageApiDto.attachments),
        before: messageApiDto.before,
        timestamp: messageApiDto.timestamp,
        content: messageApiDto.content,
        conversation: ConversationsMapper().conversationInsideMessageToEntity(messageApiDto.conversation),
        current: messageApiDto.current,
        embeds: embedListFromApiDto(messageApiDto.embeds),
        isPoll: messageApiDto.isPoll,
        members: ProfileMapper().listProfileToEntity(messageApiDto.members),
        tag: messageApiDto.tag,
        type: messageApiDto.type,
        editedTimestamp: messageApiDto.editedTimestamp,
        owner: ProfileMapper().profileEntityFromApiDtoNullable(messageApiDto.owner)
    );
  }

  List<MessageEntity> messagesFromDto(List<MessageApiDto> messagesApiDto){
    List<MessageEntity> messages = [];
    messagesApiDto.forEach((element) {
      messages.add(messageFromDto(element));
    });

    return messages;
  }
}
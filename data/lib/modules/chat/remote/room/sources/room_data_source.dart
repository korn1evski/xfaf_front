import 'package:constants/api_constants.dart';
import 'package:data/modules/chat/remote/profile/models/index.dart';
import 'package:data/modules/chat/remote/room/models/index.dart';
import 'package:dio/dio.dart';
import 'package:data/di/data_injection_container.dart' as data_injection;
import 'package:domain/modules/chat/room/entities/index.dart';
import 'package:domain/modules/chat/room/usecases/get_messages_usecase.dart';
import 'package:domain/modules/chat/room/usecases/send_message_usecase.dart';

import '../../../../../core/interceptors/dio_request_interceptor.dart';

abstract class RoomDataSource {
  Future<List<ProfileApiDto>> getRoomMembers(String conversationId);
  Future<List<MessageApiDto>> getMessages(GetMessagesParams getMessagesParams);
  Future<MessageApiDto> sendMessage(SendMessageParams sendMessageParams);
}

class RoomDataSourceImpl implements RoomDataSource{
  final Dio dioClient;

  RoomDataSourceImpl({required this.dioClient});

  @override
  Future<List<ProfileApiDto>> getRoomMembers(String conversationId) async{
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.get(
        APIConfigURL.baseUrl +
            'conversations/$conversationId/members',
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));
    List<ProfileApiDto> members = List<ProfileApiDto>.from(response.data['data'].map((model) => ProfileApiDto.fromJson(model)));
    return members;
  }

  @override
  Future<List<MessageApiDto>> getMessages(GetMessagesParams getMessagesParams) async{
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.get(
        APIConfigURL.baseUrl + "conversations/${getMessagesParams.conversationId}/messages?limit=${getMessagesParams.limit}&page=${getMessagesParams.page}&populate=embeds%2Cembeds.owner%2Cembeds.attachments%2Cembeds.message%2Cembeds.user%2Cembeds.message.owner%2Cconversation%2Cmembers%2Cowner%2Cattachments%2Creactions%2Creactions.emoji%2Cfavorites%2Chidden%2Cpoll%2Cpoll.options%2Cpoll.options.votes%2Cpoll.options.votes.user",
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));

    List<MessageApiDto> messages = List<MessageApiDto>.from(response.data['data'].map((model) => MessageApiDto.fromJson(model)));
    return messages;
  }

  @override
  Future<MessageApiDto> sendMessage(SendMessageParams sendMessageParams) async{
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.post(
        APIConfigURL.baseUrl + "conversations/${sendMessageParams.conversationId}/messages?populate=embeds,embeds.owner,embeds.attachments,embeds.message,embeds.user,embeds.message.owner,conversation,members,owner,attachments,reactions,reactions.emoji,favorites,hidden,poll,poll.options,poll.options.votes,poll.options.votes.user",
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}), data: {
          'content' : sendMessageParams.message
    });
    MessageApiDto message = MessageApiDto.fromJson(response.data['data']);
    return message;
  }

}
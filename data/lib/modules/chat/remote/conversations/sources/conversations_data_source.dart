import 'package:constants/api_constants.dart';
import 'package:data/modules/authentication/sources/manage_tokens_data_source.dart';
import 'package:data/modules/chat/remote/conversations/models/index.dart';
import 'package:data/modules/chat/remote/profile/models/index.dart';
import 'package:dio/dio.dart';
import 'package:domain/modules/chat/conversations/usecases/add_members_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/create_group_conversation_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/delete_conversation_member_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/delete_conversation_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/get_conversations_usecase.dart';
import 'package:data/di/data_injection_container.dart' as data_injection;
import 'package:domain/modules/chat/conversations/usecases/start_private_conversation_usecase.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';

import '../../../../../core/interceptors/dio_request_interceptor.dart';

abstract class ConversationsDataSource {
  Future<List<ConversationApiDto>> getConversations(
      GetConversationsParams getConversationsParams);

  Future<void> deleteConversationMember(
      DeleteConversationMemberParams deleteConversationMemberParams);

  Future<void> deleteConversation(
      DeleteConversationParams deleteConversationParams);

  Future<ConversationApiDto> startPrivateConversation(
      StartPrivateConversationParams params);

  Future<ConversationWebSocketApiDto> createGroupConversation(
      CreateGroupConversationParams params);

  Future<List<ProfileApiDto>> addMembers(AddMembersParams params);
}

class ConversationsDataSourceImpl implements ConversationsDataSource {
  final Dio dioClient;
  final ManageTokensDataSource manageTokensDataSource;

  ConversationsDataSourceImpl(
      {required this.dioClient, required this.manageTokensDataSource});

  @override
  Future<List<ConversationApiDto>> getConversations(
      GetConversationsParams getConversationsParams) async {
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.get(
        APIConfigURL.baseUrl +
            'conversations?limit=${getConversationsParams.limit.toString()}&page=${getConversationsParams.page}&populate=members%2Cicon%2Cowner%2Cmessage%2Cmessage.owner%2Cpicture',
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));
    List<ConversationApiDto> listApiConversations =
        List<ConversationApiDto>.from(response.data['data']
            .map((model) => ConversationApiDto.fromJson(model)));
    return listApiConversations;
  }

  @override
  Future<void> deleteConversationMember(
      DeleteConversationMemberParams deleteConversationMemberParams) async {
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.delete(
        APIConfigURL.baseUrl +
            'conversations/${deleteConversationMemberParams.conversationId}/members/${deleteConversationMemberParams.memberId}',
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));
  }

  @override
  Future<void> deleteConversation(
      DeleteConversationParams deleteConversationParams) async {
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.delete(
        APIConfigURL.baseUrl +
            'conversations/${deleteConversationParams.conversationId}',
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));
  }

  @override
  Future<ConversationApiDto> startPrivateConversation(
      StartPrivateConversationParams params) async {
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.post(
        APIConfigURL.baseUrl + 'conversations?populate=members',
        data: {
          'type': params.type.toString(),
          'name': params.name,
          'members': [params.memberId]
        },
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));

    ConversationApiDto conversation =
        ConversationApiDto.fromJson(response.data['data']);
    return conversation;
  }

  @override
  Future<ConversationWebSocketApiDto> createGroupConversation(
      CreateGroupConversationParams params) async {
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    late dynamic data;
    if(params.picture == null){
      data = {
        'type': params.type,
        'name': params.name,
        'members': params.members,
      };
    } else {
      data = {
        'type': params.type,
        'name': params.name,
        'members': params.members,
        'picture': params.picture
      };
    }

    final response = await dioClient.post(
        APIConfigURL.baseUrl + 'conversations?populate=members',
        data: data,
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));

    ConversationWebSocketApiDto conversation = ConversationWebSocketApiDto.fromJson(response.data['data']);
    return conversation;
  }

  @override
  Future<List<ProfileApiDto>> addMembers(AddMembersParams params) async{
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.post(
        APIConfigURL.baseUrl + 'conversations/${params.conversationId}/members',
        data: {
          'members': params.membersId
        },
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));

    List<ProfileApiDto> listDto =
    List<ProfileApiDto>.from(response.data['data']
        .map((model) => ProfileApiDto.fromJson(model)));

    return listDto;
  }
}

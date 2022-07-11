import 'package:constants/api_constants.dart';
import 'package:data/modules/authentication/sources/manage_tokens_data_source.dart';
import 'package:data/modules/chat/remote/conversations/models/index.dart';
import 'package:dio/dio.dart';
import 'package:domain/modules/chat/conversations/usecases/delete_conversation_member_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/delete_conversation_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/get_conversations_usecase.dart';
import 'package:data/di/data_injection_container.dart' as data_injection;
import 'package:domain/modules/chat/conversations/usecases/start_private_conversation_usecase.dart';

import '../../../../../core/interceptors/dio_request_interceptor.dart';

abstract class ConversationsDataSource {
  Future<List<ConversationApiDto>> getConversations(GetConversationsParams getConversationsParams);

  Future<void> deleteConversationMember(DeleteConversationMemberParams deleteConversationMemberParams);

  Future<void> deleteConversation(DeleteConversationParams deleteConversationParams);

  Future<ConversationApiDto> startPrivateConversation(StartPrivateConversationParams params);
}

class ConversationsDataSourceImpl implements ConversationsDataSource {
  final Dio dioClient;
  final ManageTokensDataSource manageTokensDataSource;

  ConversationsDataSourceImpl({required this.dioClient, required this.manageTokensDataSource});

  @override
  Future<List<ConversationApiDto>> getConversations(GetConversationsParams getConversationsParams) async {
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.get(
        APIConfigURL.baseUrl +
            'conversations?limit=30&page=${getConversationsParams.page}&populate=members%2Cicon%2Cowner%2Cmessage%2Cmessage.owner%2Cpicture',
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));
    List<ConversationApiDto> listApiConversations =
        List<ConversationApiDto>.from(response.data['data'].map((model) => ConversationApiDto.fromJson(model)));
    return listApiConversations;
  }

  @override
  Future<void> deleteConversationMember(DeleteConversationMemberParams deleteConversationMemberParams) async {
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.delete(
        APIConfigURL.baseUrl +
            'conversations/${deleteConversationMemberParams.conversationId}/members/${deleteConversationMemberParams.memberId}',
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));
  }

  @override
  Future<void> deleteConversation(DeleteConversationParams deleteConversationParams) async {
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.delete(
        APIConfigURL.baseUrl + 'conversations/${deleteConversationParams.conversationId}',
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));
  }

  @override
  Future<ConversationApiDto> startPrivateConversation(StartPrivateConversationParams params) async{
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.post(APIConfigURL.baseUrl + 'conversations?populate=members', data: {
      'type' : params.type.toString(),
      'name' : params.name,
      'members' : [params.memberId]
    }, options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));

    ConversationApiDto conversation = ConversationApiDto.fromJson(response.data['data']);
    return conversation;
  }
}

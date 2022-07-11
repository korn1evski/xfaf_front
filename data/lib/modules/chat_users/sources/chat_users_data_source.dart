import 'package:constants/api_constants.dart';
import 'package:data/modules/chat/remote/conversations/models/index.dart';
import 'package:data/modules/chat/remote/profile/models/index.dart';
import 'package:dio/dio.dart';
import 'package:domain/modules/chat_users/usecases/get_chat_users_usecase.dart';
import 'package:data/di/data_injection_container.dart' as data_injection;

import '../../../core/interceptors/dio_request_interceptor.dart';

abstract class ChatUsersDataSource{
  Future<List<ProfileApiDto>> getChatUsers(ChatUsersParams chatUsersParams);
}

class ChatUsersDataSourceImpl extends ChatUsersDataSource {
  final Dio dioClient;

  ChatUsersDataSourceImpl({required this.dioClient});

  @override
  Future<List<ProfileApiDto>> getChatUsers(ChatUsersParams chatUsersParams) async{
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final search = chatUsersParams.search.isEmpty ? '' : '&search=${chatUsersParams.search}';
    final response = await dioClient.get(
        APIConfigURL.baseUrl +
            'users/application?limit=${chatUsersParams.limit}&page=${chatUsersParams.page}' + search,
        options: Options(headers: {'x-api-key': APIConfigURL.xApiKey}));
    List<ProfileApiDto> profileList = List<ProfileApiDto>.from(response.data['data'].map((model) => ProfileApiDto.fromJson(model)));
    return profileList;
  }

}
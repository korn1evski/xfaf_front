import 'package:constants/api_constants.dart';
import 'package:data/core/interceptors/dio_auth_interceptor.dart';
import 'package:data/core/interceptors/dio_request_interceptor.dart';
import 'package:data/core/local_database/moor_database.dart';
import 'package:data/modules/attachments/repository/attachemts_repository_impl.dart';
import 'package:data/modules/attachments/sources/attachments_data_source.dart';
import 'package:data/modules/authentication/models/index.dart';
import 'package:data/modules/authentication/repository/authentication_repository_impl.dart';
import 'package:data/modules/authentication/sources/login_data_source.dart';
import 'package:data/modules/authentication/sources/manage_tokens_data_source.dart';
import 'package:data/modules/chat/remote/conversations/repository/conversations_repository_impl.dart';
import 'package:data/modules/chat/remote/conversations/sources/conversations_data_source.dart';
import 'package:data/modules/chat/remote/profile/repository/profile_repository_impl.dart';
import 'package:data/modules/chat/remote/profile/sources/profile_api_data_source.dart';
import 'package:data/modules/chat/remote/room/repository/room_repository_impl.dart';
import 'package:data/modules/chat/remote/room/sources/room_data_source.dart';
import 'package:data/modules/chat_users/repository/chat_users_repository_impl.dart';
import 'package:data/modules/chat_users/sources/chat_users_data_source.dart';
import 'package:data/modules/current_user_session/repository/current_user_repository_impl.dart';
import 'package:data/modules/current_user_session/sources/current_user_local_data_source.dart';
import 'package:data/modules/user/repository/user_repository_impl.dart';
import 'package:data/modules/user/sources/api/user_api_data_source.dart';
import 'package:data/modules/user/sources/local/user_local_data_source.dart';
import 'package:data/modules/websocket/repository/websocket_repository_impl.dart';
import 'package:data/modules/websocket/sources/websocket_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/attachments/repository/attachments_repository.dart';
import 'package:domain/modules/authentication/repository/authentication_repository.dart';
import 'package:domain/modules/chat/conversations/repository/conversations_repository.dart';
import 'package:domain/modules/chat/profile/repository/profile_repository.dart';
import 'package:domain/modules/chat/room/repository/room_repository.dart';
import 'package:domain/modules/chat_users/repository/chat_users_repository.dart';
import 'package:domain/modules/current_user_session/repository/current_user_repository.dart';
import 'package:domain/modules/user/repository/user_repository.dart';
import 'package:domain/modules/websocket/repository/websocket_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt sl = GetIt.instance;

Future<void> init({Function(Failure error)? onError}) async {
  final dataDi = GetIt.instance;
  final sharedPrefStorage = await SharedPreferences.getInstance();
  //Dio clients
  var optionsMain = BaseOptions(
    connectTimeout: 10000,
    receiveTimeout: 10000,
    sendTimeout: 10000,
    baseUrl: APIConfigURL.baseUrl,
  );

  dataDi.registerLazySingleton<RequestInterceptor>(() => RequestInterceptor(onErrorRequest: onError));
  dataDi.registerLazySingleton<DioAuthInterceptor>(() => DioAuthInterceptor(manageTokensDataSource: dataDi<ManageTokensDataSource>()));
  dataDi.registerLazySingleton<LocalCacheDatabase>(() => LocalCacheDatabase());


  final _apiClient = Dio(optionsMain);
  _apiClient.interceptors.add(dataDi<RequestInterceptor>());
  _apiClient.interceptors.add(LogInterceptor(requestBody: true, responseBody: true, requestHeader: true));

  // DataSources

  dataDi.registerLazySingleton<CurrentUserLocalDataSource>(
      () => CurrentUserLocalDataSourceImpl(dataDi<LocalCacheDatabase>()));
  dataDi.registerLazySingleton<UserLocalDataSource>(() => UserLocalDataSourceImpl(dataDi<LocalCacheDatabase>()));
  dataDi.registerLazySingleton<UserApiDataSource>(() => UserApiDataSourceImpl(dioClient: _apiClient));
  dataDi.registerLazySingleton<LoginDataSource>(() => LoginDataSourceImpl(dioClient: _apiClient));
  dataDi.registerLazySingleton<ManageTokensDataSource>(() => ManageTokensDataSourceImpl(sharedPreferences: sharedPrefStorage, dioClient: _apiClient));
  dataDi.registerLazySingleton<ProfileApiDataSource>(() => ProfileApiDataSourceImpl(dioClient: _apiClient));
  dataDi.registerLazySingleton<ConversationsDataSource>(() => ConversationsDataSourceImpl(dioClient: _apiClient, manageTokensDataSource: dataDi<ManageTokensDataSource>()));
  dataDi.registerLazySingleton<RoomDataSource>(() => RoomDataSourceImpl(dioClient: _apiClient));
  dataDi.registerLazySingleton<WebSocketDataSource>(() => WebSocketDataSourceImpl(manageTokensDataSource: dataDi<ManageTokensDataSource>()));
  dataDi.registerLazySingleton<ChatUsersDataSource>(() => ChatUsersDataSourceImpl(dioClient: _apiClient));
  dataDi.registerLazySingleton<AttachmentsDataSource>(() => AttachmentsDataSourceImpl(dioClient: _apiClient));


  //Adding auth interceptors in case at least refreshToken is saved in localStorage
  if(sharedPrefStorage.getString('refreshToken') != null){
  _apiClient.interceptors.add(dataDi<DioAuthInterceptor>());
  }


  //Repositories
  dataDi.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(
      userLocalDataSource: dataDi<UserLocalDataSource>(), userApiDataSource: dataDi<UserApiDataSource>()));
  dataDi.registerLazySingleton<AuthenticationRepository>(() => AuthenticationRepositoryImpl(loginDataSource: dataDi<LoginDataSource>(), manageTokensDataSource: dataDi<ManageTokensDataSource>(), apiClient: _apiClient, interceptor: dataDi<DioAuthInterceptor>()));

  dataDi.registerLazySingleton<CurrentUserRepository>(
      () => CurrentUserRepositoryImpl(currentUserLocalDataSource: dataDi<CurrentUserLocalDataSource>(), manageTokensDataSource: dataDi<ManageTokensDataSource>(), apiClient: _apiClient, interceptor: dataDi<DioAuthInterceptor>()));

  dataDi.registerLazySingleton<ConversationsRepository>(
          () => ConversationsRepositoryImpl(conversationsDataSource: dataDi<ConversationsDataSource>()));

  dataDi.registerLazySingleton<ProfileRepository>(() => ProfileRepositoryImpl(profileApiDataSource: dataDi<ProfileApiDataSource>(), currentUserLocalDataSource: dataDi<CurrentUserLocalDataSource>()));
  dataDi.registerLazySingleton<RoomRepository>(() => RoomRepositoryImpl(roomDataSource: dataDi<RoomDataSource>()));
  dataDi.registerLazySingleton<WebSocketRepository>(() => WebSocketRepositoryImpl(webSocketDataSource: dataDi<WebSocketDataSource>()));
  dataDi.registerLazySingleton<ChatUsersRepository>(() => ChatUsersRepositoryImpl(chatUsersDataSource: dataDi<ChatUsersDataSource>()));
  dataDi.registerLazySingleton<AttachmentsRepository>(() => AttachmentsRepositoryImpl(attachmentsDataSource: dataDi<AttachmentsDataSource>()));


  return;
}

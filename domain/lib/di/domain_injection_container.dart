import 'package:domain/modules/attachments/repository/attachments_repository.dart';
import 'package:domain/modules/attachments/usecases/upload_files_use_case.dart';
import 'package:domain/modules/authentication/repository/authentication_repository.dart';
import 'package:domain/modules/authentication/usecases/get_tokens_usecase.dart';
import 'package:domain/modules/authentication/usecases/login_use_case.dart';
import 'package:domain/modules/chat/conversations/repository/conversations_repository.dart';
import 'package:domain/modules/chat/conversations/usecases/create_group_conversation_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/delete_conversation_member_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/delete_conversation_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/get_conversations_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/start_private_conversation_usecase.dart';
import 'package:domain/modules/chat/profile/repository/profile_repository.dart';
import 'package:domain/modules/chat/profile/usecases/get_profile_usecase.dart';
import 'package:domain/modules/chat/room/repository/room_repository.dart';
import 'package:domain/modules/chat/room/usecases/get_messages_usecase.dart';
import 'package:domain/modules/chat/room/usecases/get_room_members_usecase.dart';
import 'package:domain/modules/chat/room/usecases/send_message_usecase.dart';
import 'package:domain/modules/chat_users/repository/chat_users_repository.dart';
import 'package:domain/modules/chat_users/usecases/get_chat_users_usecase.dart';
import 'package:domain/modules/current_user_session/repository/current_user_repository.dart';
import 'package:domain/modules/current_user_session/usecases/get_current_user_session_use_case.dart';
import 'package:domain/modules/current_user_session/usecases/remove_current_user_session_use_case.dart';
import 'package:domain/modules/user/repository/user_repository.dart';
import 'package:domain/modules/user/usecases/get_users_usecase.dart';
import 'package:domain/modules/websocket/repository/websocket_repository.dart';
import 'package:domain/modules/websocket/usecases/close_websocket_usecase.dart';
import 'package:domain/modules/websocket/usecases/get_conversations_controller_usecase.dart';
import 'package:domain/modules/websocket/usecases/get_messages_controller_usecase.dart';
import 'package:domain/modules/websocket/usecases/start_websocket_usecase.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

Future<void> init() async {
  final domainDi = GetIt.instance;

  // User UseCases
  domainDi.registerLazySingleton<GetUsersUseCase>(() => GetUsersUseCase(repository: domainDi<UserRepository>()));
  domainDi.registerLazySingleton<GetCurrentUserSessionUseCase>(
      () => GetCurrentUserSessionUseCase(userRepository: domainDi<CurrentUserRepository>()));
  domainDi.registerLazySingleton<RemoveCurrentUserSessionUseCase>(() => RemoveCurrentUserSessionUseCase(userRepository: domainDi<CurrentUserRepository>()));
  //Authentication UseCases
  domainDi.registerLazySingleton<LoginUseCase>(() => LoginUseCase(authenticationRepository: domainDi<AuthenticationRepository>()));
  domainDi.registerLazySingleton<GetTokensUseCase>(() => GetTokensUseCase(authenticationRepository: domainDi<AuthenticationRepository>()));

  //Profile UseCases
  domainDi.registerLazySingleton<GetProfileUseCase>(() => GetProfileUseCase(profileRepository: domainDi<ProfileRepository>()));

  //Conversations UseCase
  domainDi.registerLazySingleton<GetConversationsUseCase>(() => GetConversationsUseCase(conversationsRepository: domainDi<ConversationsRepository>()));
  domainDi.registerLazySingleton<DeleteConversationMemberUseCase>(() => DeleteConversationMemberUseCase(conversationsRepository: domainDi<ConversationsRepository>()));
  domainDi.registerLazySingleton<DeleteConversationUseCase>(() => DeleteConversationUseCase(conversationsRepository: domainDi<ConversationsRepository>()));
  domainDi.registerLazySingleton<StartPrivateConversationUseCase>(() => StartPrivateConversationUseCase(conversationsRepository: domainDi<ConversationsRepository>()));
  domainDi.registerLazySingleton<CreateGroupConversationUseCase>(() => CreateGroupConversationUseCase(conversationsRepository: domainDi<ConversationsRepository>()));

  //Room UseCases
  domainDi.registerLazySingleton<GetRoomMembersUseCase>(() => GetRoomMembersUseCase(roomRepository: domainDi<RoomRepository>()));
  domainDi.registerLazySingleton<GetMessagesUseCase>(() => GetMessagesUseCase(roomRepository: domainDi<RoomRepository>()));
  domainDi.registerLazySingleton<SendMessageUseCase>(() => SendMessageUseCase(roomRepository: domainDi<RoomRepository>()));

  //Services

  //WebSocket UseCases
  domainDi.registerLazySingleton<StartWebSocketUseCase>(() => StartWebSocketUseCase(webSocketRepository: domainDi<WebSocketRepository>()));
  domainDi.registerLazySingleton<GetConversationsControllerUseCase>(() => GetConversationsControllerUseCase(webSocketRepository:  domainDi<WebSocketRepository>()));
  domainDi.registerLazySingleton<GetMessagesControllerUseCase>(() => GetMessagesControllerUseCase(webSocketRepository: domainDi<WebSocketRepository>()));
  domainDi.registerLazySingleton<CloseWebSocketUseCase>(() => CloseWebSocketUseCase(webSocketRepository: domainDi<WebSocketRepository>()));

  //ChatUsers UseCases
  domainDi.registerLazySingleton<GetChatUsersUseCase>(() => GetChatUsersUseCase(chatUsersRepository: domainDi<ChatUsersRepository>()));

  //Attachments UseCases
  domainDi.registerLazySingleton<UploadFilesUseCase>(() => UploadFilesUseCase(attachmentsRepository: domainDi<AttachmentsRepository>()));
}

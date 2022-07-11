import 'dart:async';

import 'package:data/modules/chat/remote/conversations/models/mappers/conversations_mapper.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/conversations/usecases/delete_conversation_member_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/delete_conversation_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/get_conversations_usecase.dart';
import 'package:domain/modules/chat/room/entities/index.dart';
import 'package:domain/modules/current_user_session/entities/index.dart';
import 'package:domain/modules/current_user_session/usecases/get_current_user_session_use_case.dart';
import 'package:domain/modules/websocket/usecases/get_conversations_controller_usecase.dart';
import 'package:domain/modules/websocket/usecases/get_messages_controller_usecase.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat/constants/resources/help_functions.dart';

class ChatsController extends GetxController {
  late TextEditingController searchController;
  Rx<bool> isLoading = false.obs;
  String profileUrl = '';
  CurrentUserEntity? currentUserEntity;
  late RxList<ConversationEntity> conversations = <ConversationEntity>[].obs;
  final GetCurrentUserSessionUseCase getCurrentUserSessionUseCase;
  final GetConversationsUseCase getConversationsUseCase;
  final GetConversationsControllerUseCase getConversationsControllerUseCase;
  final GetMessagesControllerUseCase getMessagesControllerUseCase;
  final DeleteConversationMemberUseCase deleteConversationMemberUseCase;
  final DeleteConversationUseCase deleteConversationUseCase;
  late StreamController<MessageEntity> messagesController;
  late StreamSubscription<MessageEntity> messagesSubscription;
  late Stream<MessageEntity> messagesStream;
  late StreamController<ConversationEventEntity> conversationsController;
  late Stream<ConversationEventEntity> conversationsStream;
  late StreamSubscription<ConversationEventEntity> conversationsSubscription;

  ChatsController(
      {required this.getCurrentUserSessionUseCase,
      required this.getConversationsUseCase,
      required this.getConversationsControllerUseCase,
      required this.getMessagesControllerUseCase,
      required this.deleteConversationUseCase,
      required this.deleteConversationMemberUseCase});

  initialLoading() async {
    setIsLoading(isLoading);
    var response = await getCurrentUserSessionUseCase.call();
    response.fold((l) {}, (r) => currentUserEntity = r);
    if (currentUserEntity != null && currentUserEntity?.picture != null) {
      profileUrl = currentUserEntity!.picture!;
    }

    setIsLoading(isLoading);

    messagesController = getMessagesControllerUseCase.call();
    messagesStream = messagesController.stream.asBroadcastStream();

    messagesSubscription = messagesStream.listen((message) {
      ConversationEntity? temp;
      ConversationEntity? toRemove;
      conversations.forEach((element) {
        if (element.id == message.conversation.id) {
          toRemove = element;
          temp = element.copyWith(unread: element.unread + 1);
          if (temp!.message != null) {
            EmbedMessageEntity embedTemp = temp!.message!.copyWith(content: message.content);
            temp = temp!.copyWith(message: embedTemp);
          }
        }
      });
      conversations.remove(toRemove);
      if (temp != null) {
        conversations.insert(0, temp!);
      }
    });

    conversationsController = getConversationsControllerUseCase.call();
    conversationsStream = conversationsController.stream.asBroadcastStream();

    conversationsSubscription = conversationsStream.listen((conversation) {
      if ((conversation.event == 'CONVERSATION_MEMBER_DELETE' && conversation.conversation.members[0].id == currentUserEntity!.id) ||
          conversation.event == 'CONVERSATION_DELETE') {
        conversations.removeWhere((element) => element.id == conversation.conversation.id);
      }
      if (conversation.event == 'CONVERSATION_CREATE') {
        conversations.insert(
            0,
            ConversationsMapper().conversationWebSocketDtoToConversationEntity(
                conversation.conversation, 'The beginning of conversations'));
        conversations.refresh();
      }
    });
  }

  deleteConversation(ConversationEntity conversationEntity) async {
    if (conversationEntity.owner.id == currentUserEntity!.id) {
      showAreYouSure('Delete conversation', 'Are you sure about deleting the conversation?', () async {
        await deleteConversationUseCase(DeleteConversationParams(conversationId: conversationEntity.id));
        Get.back();
      });
    } else {
      await deleteConversationMemberUseCase(
          DeleteConversationMemberParams(conversationId: conversationEntity.id, memberId: currentUserEntity!.id));
    }

  }

  getConversations() async {
    setIsLoading(isLoading);
    final result = await getConversationsUseCase.call(GetConversationsParams(page: 1));
    result.fold((l) => print('Conversations error'), (r) {
      conversations = r.obs;
    });
    conversations.refresh();
    setIsLoading(isLoading);
  }

  @override
  void onInit() async {
    super.onInit();
    searchController = TextEditingController();
    // await initialLoading();
  }

  @override
  void onClose() {
    messagesSubscription.cancel();
    messagesController.close();
    conversationsSubscription.cancel();
    conversationsController.close();
  }
}

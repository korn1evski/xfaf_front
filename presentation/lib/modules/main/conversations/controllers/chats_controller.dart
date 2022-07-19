import 'dart:async';

import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/hard_coded.dart';
import 'package:chat/generated/locale_keys.loc.dart';
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
import 'package:get/get.dart' hide Trans;
import 'package:chat/constants/resources/help_functions.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ChatsController extends GetxController {
  late TextEditingController searchController;
  Rx<bool> isLoading = false.obs;
  Rx<String> profileUrl = ''.obs;
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
  int currentPage = 1;

  ChatsController({required this.getCurrentUserSessionUseCase,
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
      profileUrl.value = currentUserEntity!.picture!;
    }

    if (currentUserEntity != null && currentUserEntity?.picture == null) {
      profileUrl.value = '';
    }

    setIsLoading(isLoading);

    messagesController = getMessagesControllerUseCase.call();
    messagesStream = messagesController.stream.asBroadcastStream();

    messagesSubscription = messagesStream.asBroadcastStream().listen((message) {
      ConversationEntity? temp;
      ConversationEntity? toRemove;
      conversations.forEach((element) {
        if (element.id == message.conversation.id) {
          toRemove = element;
          temp = element.copyWith(unread: element.unread + 1,
              editedTimestamp: DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                  .format(DateTime.now()));
          if (temp!.message != null) {
            EmbedMessageEntity embedTemp = temp!.message!.copyWith(
                content: message.content,
                editedTimestamp: DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                    .format(DateTime.now()),
                timestamp: message.editedTimestamp);
                temp = temp!.copyWith(message: embedTemp);
          } else {
            temp = temp!.copyWith(
                message: EmbedMessageEntity(
                    id: message.id,
                    attachments: [],
                    content: message.content,
                    conversation: message.conversation.id,
                    isPoll: false,
                    editedTimestamp: DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                        .format(DateTime.now()),
                    owner: message.owner ?? HardCoded.profileEntityHard,
                    tag: message.tag,
                    type: message.type,
                    timestamp: message.editedTimestamp));
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
      if ((conversation.event == 'CONVERSATION_MEMBER_DELETE' &&
          conversation.conversation.members[0].id ==
              currentUserEntity!.id) ||
          conversation.event == 'CONVERSATION_DELETE') {
        conversations.removeWhere(
                (element) => element.id == conversation.conversation.id);
      }
      if (conversation.event == 'CONVERSATION_CREATE') {
        conversations.insert(
            0,
            ConversationsMapper().conversationWebSocketDtoToConversationEntity(
                conversation.conversation, LocaleKeys.theBeginningOfConversation.tr().capitalizeFirst!));
        conversations.refresh();
      }
    });
  }

  deleteConversation(ConversationEntity conversationEntity) async {
    if (conversationEntity.owner.id == currentUserEntity!.id) {
      showAreYouSure('Delete conversation',
          LocaleKeys.areYouSureDeletingConversation.tr(), () async {
            await deleteConversationUseCase(
                DeleteConversationParams(
                    conversationId: conversationEntity.id));
            Get.back();
          });
    } else {
      await deleteConversationMemberUseCase(DeleteConversationMemberParams(
          conversationId: conversationEntity.id,
          memberId: currentUserEntity!.id));
    }
  }

  getConversations() async {
    setIsLoading(isLoading);
    final result = await getConversationsUseCase
        .call(GetConversationsParams(page: 1, limit: 15));
    result.fold((l) => print('Conversations error'), (r) {
      conversations = r.obs;
    });
    conversations.refresh();
    setIsLoading(isLoading);
  }

  Future<void> onLoading(RefreshController refreshController) async {
    currentPage++;
    final result = await getConversationsUseCase
        .call(GetConversationsParams(page: currentPage, limit: 15));
    result.fold((l) => print('Conversations error'), (r) {
      if (r.isNotEmpty) {
        conversations.addAll(r);
        refreshController.loadComplete();
      } else {
        refreshController.loadNoData();
      }
    });
  }

  @override
  void onInit() async {
    super.onInit();
    searchController = TextEditingController();
  }

  @override
  void onClose() {
    messagesSubscription.cancel();
    conversationsSubscription.cancel();
  }
}

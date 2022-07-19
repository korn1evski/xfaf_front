import 'dart:async';

import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/room/entities/index.dart';
import 'package:domain/modules/chat/room/usecases/get_messages_usecase.dart';
import 'package:domain/modules/chat/room/usecases/send_message_usecase.dart';
import 'package:domain/modules/websocket/usecases/get_messages_controller_usecase.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:chat/constants/resources/help_functions.dart';
import 'package:chat/modules/main/conversations/controllers/chats_controller.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ChatRoomController extends GetxController {
  late RefreshController refreshController;

  ChatRoomController(
      {required this.getMessagesUseCase, required this.sendMessageUseCase, required this.getMessagesControllerUseCase});

  late TextEditingController messageInputController;
  late ConversationEntity conversationEntity;
  late StreamController<MessageEntity> messagesController;
  late StreamSubscription<MessageEntity> messagesSubscription;
  Rx<String> conversationImg = ''.obs;
  RxList<MessageEntity> messagesList = RxList();
  Rx<bool> isLoading = false.obs;
  Rx<String> messageInputValue = ''.obs;
  int currentPage = 1;
  final GetMessagesUseCase getMessagesUseCase;
  final SendMessageUseCase sendMessageUseCase;
  final GetMessagesControllerUseCase getMessagesControllerUseCase;
  Rx<bool> messageIsLoading = false.obs;
  Rx<int> otherChatsNotifications = 0.obs;
  String previousMessageId = '';
  final chatsController = Get.find<ChatsController>();
  bool sentByMe = false;
  bool isFirst = false;
  bool isLast = false;

  setBubbleSettings(MessageEntity message){
    if (message.type == 1) {
      sentByMe = message.owner!.id ==
          Get.find<ChatsController>()
              .currentUserEntity!
              .id;
      if (
          conversationEntity.type ==
          2) {
        int currentIndex =
    messagesList
            .indexOf(message);
        if (currentIndex != 0 &&

                messagesList[
            currentIndex - 1]
                .owner!
                .id !=
                message.owner!.id ||
            currentIndex != 0 &&
                messagesList[
                currentIndex - 1]
                    .type ==
                    2) {
          isFirst = true;
        }

        if (currentIndex ==
            messagesList.length -
                1) {
          isLast = true;
        }

        if (currentIndex !=
            messagesList.length -
                1 &&
            messagesList[
            currentIndex + 1]
                .owner!
                .id !=
                message.owner!.id) {
          isLast = true;
        }
        if (currentIndex == 0) {
          isFirst = true;
        }
      }
    }
  }

  initialLoading() async {
    setIsLoading(isLoading);
    conversationEntity = Get.arguments['conversationEntity'];
    conversationImg = getConversationImg(conversationEntity, Get.find<ChatsController>().currentUserEntity!).obs;
    final result =
        await getMessagesUseCase.call(GetMessagesParams(page: currentPage, conversationId: conversationEntity.id));
    result.fold((l) => print('Room error'), (r) {
      messagesList = r.obs;
    });
    messagesList = messagesList.reversed.toList().obs;
    messagesList.refresh();
    setIsLoading(isLoading);

    messagesSubscription = chatsController.messagesStream.asBroadcastStream().listen((message) {
        if(message.conversation.id == conversationEntity.id && messagesList.last.id != message.id) {
          messagesList.add(message);
          messagesList.refresh();
        }
        if(message.conversation.id != conversationEntity.id && message.id != previousMessageId){
          previousMessageId = message.id;
          otherChatsNotifications.value += 1;
        }
    });
  }

  Future<void> onBack() async{
    chatsController.conversations.forEach((element) {
      if(element.id == conversationEntity.id){
        chatsController.conversations[chatsController.conversations.indexOf(element)]= element.copyWith(unread: 0);
      }
    });
    currentPage = 1;
    final result =
        await getMessagesUseCase.call(GetMessagesParams(page: currentPage, conversationId: conversationEntity.id));
    result.fold((l) => print('Room error'), (r) {
      messagesList = r.obs;
    });
  }

  Future<void> refresherOnLoading() async {
    currentPage += 1;
    final result =
        await getMessagesUseCase.call(GetMessagesParams(page: currentPage, conversationId: conversationEntity.id));
    result.fold((l) => print('Room error'), (r) {
      if (r.isEmpty) {
        refreshController.loadNoData();
      } else {
        messagesList.insertAll(0, r);
        messagesList.refresh();
        refreshController.loadComplete();
      }
    });
  }

  Future<void> sendMessage() async {
    String messageContent = messageInputController.text;
    messageInputController.clear();
    messageInputValue = ''.obs;
    setIsLoading(messageIsLoading);
    final result = await sendMessageUseCase
        .call(SendMessageParams(conversationId: conversationEntity.id, message: messageContent));
    result.fold((l) => print('Message error'), (r) {
    });
    setIsLoading(messageIsLoading);
  }

  @override
  void onInit() async {
    super.onInit();
    messageInputController = TextEditingController();
    refreshController = RefreshController();
    await initialLoading();
  }

  @override
  void onClose() {
    super.onClose();
    messageInputController.dispose();
    messagesSubscription.cancel();
    refreshController.dispose();
  }
}

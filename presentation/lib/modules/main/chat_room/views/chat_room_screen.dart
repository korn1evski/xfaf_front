import 'package:domain/modules/chat/room/entities/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/simple_input.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/modules/main/chat_room/controllers/chat_room_controller.dart';
import 'package:chat/modules/main/chat_room/widgets/bubble_widget.dart';
import 'package:chat/modules/main/chat_room/widgets/chat_room_bar.dart';
import 'package:chat/modules/main/chat_room/widgets/date_card.dart';
import 'package:chat/modules/main/conversations/controllers/chats_controller.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../constants/resources/help_functions.dart';

class ChatRoomScreen extends StatefulWidget {
  const ChatRoomScreen({Key? key}) : super(key: key);

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends BasePageState<ChatRoomScreen> {
  ChatRoomController chatRoomController = Get.find();

  @override
  initState() {
    super.initState();
    chatRoomController.isLoading.listen((value) {
      controller.isLoading.value = value;
    });
    chatRoomController.initialLoading();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        controller: controller,
        builder: (context) {
          return SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => ChatRoomBar(
                    notificationsNumber: chatRoomController.otherChatsNotifications.value,
                    backOnTap: () async {
                      Get.back();
                      // await Get.find<ChatsController>().getConversations();
                      await chatRoomController.onBack();
                    },
                    profileImgUrl: chatRoomController.conversationImg.value,
                    additionalInfoText: 'Seen 1 hour ago',
                    roomName: chatRoomController.conversationEntity.type == 1
                        ? givePrivateConversationName(chatRoomController.chatsController.currentUserEntity!,
                            chatRoomController.conversationEntity)
                        : chatRoomController.conversationEntity.name,
                  ),
                ),
                Expanded(
                    child: chatRoomController.isLoading.value
                        ? const SizedBox()
                        : SmartRefresher(
                            reverse: true,
                            enablePullUp: true,
                            enablePullDown: false,
                            onLoading: () async {
                              await chatRoomController.refresherOnLoading();
                            },
                            controller: chatRoomController.refreshController,
                            child: SingleChildScrollView(
                              child: Obx(
                                () {
                                  chatRoomController.messagesList.length;
                                  return GroupedListView<MessageEntity, DateTime>(
                                    shrinkWrap: true,
                                    padding: EdgeInsets.all(
                                      8.w,
                                    ),
                                    reverse: true,
                                    order: GroupedListOrder.DESC,
                                    dragStartBehavior: DragStartBehavior.down,
                                    elements: chatRoomController.messagesList,
                                    groupBy: (message) => DateTime(
                                        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(message.timestamp).year,
                                        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(message.timestamp).month,
                                        DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(message.timestamp).day),
                                    groupHeaderBuilder: (MessageEntity message) => DateCard(
                                        date: DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").parse(message.timestamp)),
                                    itemBuilder: (context, MessageEntity message) {
                                      bool sentByMe = false;
                                      if (message.type == 1) {
                                        sentByMe =
                                            message.owner!.id == Get.find<ChatsController>().currentUserEntity!.id;
                                      }
                                      return BubbleWidget(
                                        isNotification: message.type == 2,
                                        sentByMe: sentByMe,
                                        text: message.content,
                                        date: DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                                            .parse(message.timestamp)
                                            .add(Duration(hours: 3)),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                          )),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.backColor,
                      border: Border(top: BorderSide(color: AppColors.mainBorderColor, width: 1))),
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  height: 56.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppAssets.attachIcon(color: AppColors.labelColor),
                      AppAssets.lightningIcon(color: AppColors.labelColor),
                      SimpleInput(
                        controller: chatRoomController.messageInputController,
                        width: 200.w,
                        hintText: 'Send a message',
                        onChange: (value) {
                          chatRoomController.messageInputValue.value = value!;
                        },
                      ),
                      chatRoomController.messageInputValue.value != ''
                          ? GestureDetector(
                              onTap: () async {
                                await chatRoomController.sendMessage();
                              },
                              child: AppAssets.sendIcon(color: AppColors.labelColor))
                          : chatRoomController.messageIsLoading.value
                              ? SizedBox(
                                  width: 15.w,
                                  height: 15.w,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2.w,
                                    color: AppColors.blueWhiteBack,
                                  ))
                              : const SizedBox()
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }
}

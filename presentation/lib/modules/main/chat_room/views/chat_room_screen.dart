import 'package:chat/common/widgets/select_tiles.dart';
import 'package:chat/routes/app_pages.dart';
import 'package:domain/modules/chat/room/entities/index.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' hide Trans;
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
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../../../common/widgets/red_circle.dart';
import '../../../../constants/resources/help_functions.dart';
import '../../../../generated/locale_keys.loc.dart';
import 'package:flutter/cupertino.dart';

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
    return WillPopScope(
      onWillPop: () async {
        await chatRoomController.onBack();
        return true;
      },
      child: BasePage(
          controller: controller,
          builder: (context) {
            return SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => ChatRoomBar(
                      photoOnTap: chatRoomController.conversationEntity.type == 2 ? (){
                        Get.toNamed(Routes.GROUPINFO, arguments: [chatRoomController.conversationEntity]);
                      } : null,
                      notificationsNumber:
                          chatRoomController.otherChatsNotifications.value,
                      backOnTap: () async {
                        Get.back();
                        await chatRoomController.onBack();
                      },
                      profileImgUrl:
                          chatRoomController.conversationEntity.picture?.url ??
                              chatRoomController.conversationImg.value,
                      additionalInfoText: chatRoomController
                                  .conversationEntity.type ==
                              2
                          ? ''
                          : 'Seen 1 hour ago',
                      roomName: chatRoomController.conversationEntity.type == 1
                          ? givePrivateConversationName(
                              chatRoomController
                                  .chatsController.currentUserEntity!,
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
                                    return GroupedListView<MessageEntity,
                                        DateTime>(
                                      shrinkWrap: true,
                                      padding: EdgeInsets.all(
                                        8.w,
                                      ),
                                      reverse: true,
                                      order: GroupedListOrder.DESC,
                                      dragStartBehavior: DragStartBehavior.down,
                                      elements: chatRoomController.messagesList,
                                      groupBy: (message) => DateTime(
                                          DateFormat(
                                                  "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                                              .parse(message.timestamp)
                                              .year,
                                          DateFormat(
                                                  "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                                              .parse(message.timestamp)
                                              .month,
                                          DateFormat(
                                                  "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                                              .parse(message.timestamp)
                                              .day),
                                      groupHeaderBuilder:
                                          (MessageEntity message) => DateCard(
                                              date: DateFormat(
                                                      "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                                                  .parse(message.timestamp)),
                                      itemBuilder:
                                          (context, MessageEntity message) {
                                        chatRoomController
                                            .setBubbleSettings(message);
                                        return BubbleWidget(
                                          attachments: message.attachments,
                                          isGroup:
                                              message.conversation.type == 2,
                                          isNotification: message.type == 2,
                                          sentByMe: chatRoomController.sentByMe,
                                          owner: message.owner,
                                          isFirst: chatRoomController.isFirst,
                                          isLast: chatRoomController.isLast,
                                          text: message.content,
                                          date: DateFormat(
                                                  "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
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
                        border: Border(
                            top: BorderSide(
                                color: AppColors.mainBorderColor, width: 1))),
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    // height: 56.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                            onTap: () async {
                              selectTiles(context, {
                                'Images': chatRoomController.pickImages,
                                'Files': chatRoomController.pickFiles,
                              });
                            },
                            child: chatRoomController.selectedFiles.value != 0
                                ? GestureDetector(
                                    onTap: () {
                                      chatRoomController.selectedFiles.value =
                                          0;
                                    },
                                    child: Icon(
                                      Icons.close,
                                      size: 28.sp,
                                      color: AppColors.labelColor,
                                    ),
                                  )
                                : AppAssets.attachIcon(
                                    color: AppColors.labelColor)),
                        chatRoomController.selectedFiles.value != 0
                            ? RedCircle(
                                number: chatRoomController.selectedFiles.value)
                            : AppAssets.lightningIcon(
                                color: AppColors.labelColor),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.h),
                          child: SimpleInput(
                            controller:
                                chatRoomController.messageInputController,
                            width: 200.w,
                            hintText:
                                LocaleKeys.sendAMessage.tr().capitalizeFirst!,
                            onChange: (value) {
                              chatRoomController.messageInputValue.value =
                                  value!;
                            },
                            maxLines: 5,
                          ),
                        ),
                        chatRoomController.messageInputValue.value != '' ||
                                chatRoomController.selectedFiles.value != 0
                            ? GestureDetector(
                                onTap: () async {
                                  await chatRoomController.sendMessage();
                                },
                                child: AppAssets.sendIcon(
                                    color: AppColors.labelColor))
                            : chatRoomController.messageIsLoading.value
                                ? SizedBox(
                                    width: 15.w,
                                    height: 15.w,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.w,
                                      color: AppColors.blueWhiteBack,
                                    ))
                                : const SizedBox(),
                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}

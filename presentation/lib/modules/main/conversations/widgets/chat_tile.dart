import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/common/widgets/red_circle.dart';
import 'package:chat/common/widgets/round_cached_image.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/routes/app_pages.dart';

import '../../../../constants/app_constants.dart';
import '../../../../constants/resources/help_functions.dart';
import '../controllers/chats_controller.dart';

class ChatTile extends StatelessWidget {
  ChatTile({Key? key, required this.conversationEntity, this.onTap}) : super(key: key);
  final ConversationEntity conversationEntity;
  final Function()? onTap;

  final ChatsController chatsController = Get.find();

  String you() {
    if (conversationEntity.message!.owner.id == chatsController.currentUserEntity!.id) {
      return 'You: ';
    } else {
      return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
          extentRatio: 0.35,
          motion: const ScrollMotion(), children: [
        SlidableAction(
          onPressed: (context) {},
          backgroundColor: AppColors.authInputColor,
          icon: Icons.more_horiz,
          foregroundColor: AppColors.mainTextColor,
        ),
        SlidableAction(
          onPressed: (context) async{
            await chatsController.deleteConversation(conversationEntity);
          },
          backgroundColor: AppColors.authInputColor,
          icon: Icons.delete,
          foregroundColor: AppColors.notificationRed,
        ),
      ]),
      child: InkWell(
        onTap: () {
          final String conversationImg = getConversationImg(conversationEntity, chatsController.currentUserEntity!);
          Get.toNamed(Routes.ROOM, arguments: {'conversationEntity': conversationEntity});
          // chatsController.messagesSubscription.cancel();
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
          height: 64.h,
          width: double.maxFinite,
          decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: AppColors.mainBorderColor))),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RoundedCachedImage(imgUrl: getConversationImg(conversationEntity, chatsController.currentUserEntity!)),
              SizedBox(
                width: 8.w,
              ),
              SizedBox(
                width: 222.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonText(
                      text: conversationEntity.type == 1
                          ? givePrivateConversationName(chatsController.currentUserEntity!, conversationEntity)
                          : conversationEntity.name,
                      size: 14,
                      lineHeight: 1.2,
                      fontWeight: FontWeight.w700,
                      color: AppColors.mainTextColor,
                      isEllipsis: true,
                      numberOfLines: 1,
                    ),
                    CommonText(
                      text: conversationEntity.message != null
                          ? you() + conversationEntity.message!.content
                          : 'The beginning of conversation',
                      size: 12,
                      lineHeight: 1.2,
                      color: AppColors.labelColor,
                      isEllipsis: true,
                      numberOfLines: 1,
                    )
                  ],
                ),
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  conversationEntity.unread != 0 ? RedCircle(number: conversationEntity.unread) : const SizedBox(),
                  SizedBox(
                    height: 3.h,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 7.h),
                    child: Row(
                      children: [
                        CommonText(
                          text: DateFormat.yMd().format(DateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'")
                              .parse(conversationEntity.editedTimestamp)
                              .add(const Duration(hours: 3))),
                          size: 12,
                          color: AppColors.labelColor,
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

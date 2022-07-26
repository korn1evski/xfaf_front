import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat/common/widgets/gallery_widget.dart';
import 'package:chat/common/widgets/open_photo_widget.dart';
import 'package:chat/common/widgets/round_cached_image.dart';
import 'package:chat/modules/main/chat_room/controllers/chat_room_controller.dart';
import 'package:chat/modules/main/chat_room/widgets/file_preview.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/constants/resources/help_functions.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';

import '../../../../constants/app_constants.dart';

class BubbleWidget extends StatelessWidget {
  BubbleWidget(
      {Key? key,
      required this.sentByMe,
      required this.text,
      required this.date,
      required this.isNotification,
      this.isFirst = false,
      this.isLast = false,
      this.owner,
      required this.isGroup,
      required this.attachments,})
      : super(key: key);
  final bool sentByMe;
  final bool isFirst;
  final bool isLast;
  final String text;
  final DateTime date;
  final bool isNotification;
  final ProfileEntity? owner;
  final bool isGroup;
  final List<PictureEntity> attachments;

  final ChatRoomController chatRoomController = Get.find();

  @override
  Widget build(BuildContext context) {
    return isNotification
        ? Align(
            alignment: Alignment.center,
            child: Stack(
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5.h),
                        child: CommonText(
                          text: returnRoomsTextEvent(text),
                          color: AppColors.mainTextColor,
                          size: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      CommonText(
                        text: DateFormat.Hm().format(date),
                        size: 10,
                        color: AppColors.labelColor,
                      )
                    ]),
              ],
            ),
          )
        : Align(
            alignment: sentByMe ? Alignment.centerRight : Alignment.centerLeft,
            child: Stack(
              children: [
                Padding(
                  padding: sentByMe || !isGroup
                      ? EdgeInsets.zero
                      : EdgeInsets.only(left: 27.w),
                  child: Card(
                    color: Colors.transparent,
                    shadowColor: Colors.transparent,
                    semanticContainer: false,
                    borderOnForeground: false,
                    child: Container(
                      constraints:
                          BoxConstraints(minWidth: 65.w, maxWidth: 272.w),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: AppColors.messageBorderColor),
                          color: sentByMe
                              ? AppColors.getMyMessageColor
                              : AppColors.getPersonsMessageColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(16.w),
                              topLeft: Radius.circular(16.w),
                              bottomRight: !sentByMe
                                  ? Radius.circular(16.w)
                                  : Radius.zero,
                              bottomLeft: sentByMe
                                  ? Radius.circular(16.w)
                                  : Radius.zero)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: 8.h, left: 16.w, right: 16.w, bottom: 12.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            isFirst && !sentByMe
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CommonText(
                                        text: owner!.firstName,
                                        color: AppColors.mainBlue,
                                        size: 12,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      SizedBox(
                                        height: 3.h,
                                      ),
                                    ],
                                  )
                                : const SizedBox(),
                            attachments.isNotEmpty
                                ? GridView.builder(
                                    padding: text.isNotEmpty
                                        ? EdgeInsets.only(bottom: 6.h)
                                        : EdgeInsets.zero,
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisSpacing: 2.w,
                                            mainAxisSpacing: 2.w,
                                            crossAxisCount:
                                                attachments.length < 3
                                                    ? attachments.length
                                                    : 3),
                                    itemCount: attachments.length,
                                    itemBuilder: (_, index) {
                                      return attachments[index]
                                              .mimetype
                                              .contains('application')
                                          ? FilePreview(
                                              pictureEntity:
                                                  attachments[index])
                                          : GestureDetector(
                                              onTap: () {
                                                Get.to(() => GalleryWidget(
                                                    urlImages: chatRoomController.imagesLinks,
                                                    index: chatRoomController.imagesLinks.indexOf(
                                                        attachments[index]
                                                            .url)));
                                              },
                                              child: Container(
                                                  height: 30,
                                                  width: Get.size.width,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                    image:
                                                        CachedNetworkImageProvider(
                                                            attachments[index]
                                                                .url),
                                                    fit: BoxFit.cover,
                                                  ))),
                                            );
                                    })
                                : const SizedBox(),
                            CommonText(
                              text: text,
                              color: AppColors.mainTextColor,
                              size: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                isLast && !sentByMe
                    ? Positioned(
                        left: 0,
                        bottom: 0,
                        child: RoundedCachedImage(
                          imgUrl: owner!.photo ?? '',
                          size: 25,
                        ))
                    : const SizedBox(),
                Positioned(
                    right: 13,
                    bottom: 7,
                    child: Row(
                      children: [
                        CommonText(
                          text: DateFormat.Hm().format(date),
                          size: 10,
                          color: AppColors.labelColor,
                        )
                      ],
                    ))
              ],
            ),
          );
  }
}

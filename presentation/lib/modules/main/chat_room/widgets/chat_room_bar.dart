import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:chat/common/widgets/red_circle.dart';
import 'package:chat/constants/app_constants.dart';

import '../../../../common/widgets/common_text.dart';
import '../../../../common/widgets/round_cached_image.dart';
import '../../../../constants/resources/colors.dart';

class ChatRoomBar extends StatelessWidget {
  const ChatRoomBar({Key? key, required this.profileImgUrl, required this.roomName, required this.additionalInfoText, this.backOnTap, this.notificationsNumber = 0, this.photoOnTap}) : super(key: key);
  final String profileImgUrl;
  final String roomName;
  final String additionalInfoText;
  final Function()? backOnTap;
  final int notificationsNumber;
  final Function()? photoOnTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            padding: EdgeInsets.only(top: 11.h, bottom: 9.h),
            width: double.maxFinite,
            height: 56.h,
            decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: AppColors.mainBorderColor))),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 200.w,
                    child: CommonText(
                      center: true,
                      text: roomName,
                      size: 16,
                      color: AppColors.mainTextColor,
                      fontWeight: FontWeight.w700,
                      lineHeight: 1.2,
                      numberOfLines: 1,
                      isEllipsis: true,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  CommonText(
                    text: additionalInfoText,
                    size: 12,
                    lineHeight: 1.2,
                    color: AppColors.labelColor,
                  )
                ],
              ),
            )),
        Positioned(
            left: 25.w,
            top: 8.h,
            child: notificationsNumber != 0 ? RedCircle(number: notificationsNumber) : const SizedBox(),
        ),
        Positioned(
            top: 16.h,
            left: 8.w,
            child: GestureDetector(
                onTap: backOnTap,
                child: AppAssets.backIcon(color: AppColors.mainTextColor))),
        Positioned(
            top: 8.h,
            right: 8.w,
            child: GestureDetector(onTap: photoOnTap, child: RoundedCachedImage(imgUrl: profileImgUrl)))
      ],
    );
  }
}

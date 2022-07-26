import 'package:chat/common/widgets/custom_checkbox.dart';
import 'package:chat/common/widgets/custom_switch.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../common/widgets/common_text.dart';
import '../../../../common/widgets/round_cached_image.dart';
import '../../../../constants/resources/colors.dart';

class UserTile extends StatelessWidget {
  const UserTile(
      {Key? key,
      required this.profileEntity,
      this.onTap,
      this.withSwitch = false,
      this.onSwitch,
      this.switchVal = false})
      : super(key: key);
  final ProfileEntity profileEntity;
  final Function()? onTap;
  final bool withSwitch;
  final Function()? onSwitch;
  final bool switchVal;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
        height: 64.h,
        width: double.maxFinite,
        decoration: BoxDecoration(
            border: Border(
                bottom:
                    BorderSide(width: 1, color: AppColors.mainBorderColor))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundedCachedImage(imgUrl: profileEntity.photo ?? ''),
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
                    text:
                        '${profileEntity.firstName} ${profileEntity.lastName}',
                    size: 14,
                    lineHeight: 1.2,
                    fontWeight: FontWeight.w700,
                    color: AppColors.mainTextColor,
                    isEllipsis: true,
                    numberOfLines: 1,
                  ),
                  CommonText(
                    text: profileEntity.email,
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
            withSwitch
                ? CustomSwitch(
                    color: AppColors.mainBlue,
                    onSwitch: onSwitch,
                    switchVal: switchVal,
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}

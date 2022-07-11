import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/common/widgets/options_container.dart';
import 'package:chat/common/widgets/round_cached_image.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/routes/app_pages.dart';
import 'package:side_sheet/side_sheet.dart';
import '../../modules/main/account/views/account_info_widget.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key,
    required this.text,
    this.withBackArrow = false,
    this.withWrite = false,
    this.withProfileImage = false,
    this.pageContext,
    this.imgUrl = ''})
      : super(key: key);
  final String text;
  final bool withBackArrow;
  final bool withWrite;
  final bool withProfileImage;
  final String imgUrl;
  final BuildContext? pageContext;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.maxFinite,
            height: 56.h,
            decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1, color: AppColors.mainBorderColor))),
            child: Center(
              child: CommonText(
                text: text,
                size: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.mainTextColor,
                lineHeight: 1.19,
              ),
            )),
        withBackArrow
            ? Positioned(
            top: 16.h,
            left: 8.w,
            child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: AppAssets.backIcon(color: AppColors.mainTextColor)))
            : const SizedBox(),
        withProfileImage
            ? Positioned(
            top: 8.h,
            left: 8.w,
            child: GestureDetector(
                onTap: () {
                  if (pageContext != null) {
                    SideSheet.left(body: AccountInfoWidget(), context: pageContext!, width: Get.size.width * 0.7);
                  }
                },
                child: RoundedCachedImage(imgUrl: imgUrl)))
            : const SizedBox(),
        withWrite
            ? Positioned(
              top: 6.h,
              right: 8.w,
              child: OptionsContainer(map: {'Private' : (){
                Get.toNamed(Routes.NEWCONVERSATION);
              }, 'Group' : (){}})
            )
            : const SizedBox(),
      ],
    );
  }
}

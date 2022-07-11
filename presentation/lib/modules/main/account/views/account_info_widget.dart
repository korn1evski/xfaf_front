import 'package:domain/modules/current_user_session/entities/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/common/widgets/round_cached_image.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/constants/resources/help_functions.dart';
import 'package:chat/modules/main/account/controllers/account_info_controller.dart';
import 'package:chat/modules/main/account/widgets/button_icon.dart';
import 'package:chat/modules/root/controllers/root_controller.dart';

import '../../../../routes/app_pages.dart';

class AccountInfoWidget extends StatefulWidget {
  const AccountInfoWidget({Key? key, this.currentUserEntity}) : super(key: key);
  final CurrentUserEntity? currentUserEntity;

  @override
  State<AccountInfoWidget> createState() => AccountInfoWidgetState();
}

class AccountInfoWidgetState extends BasePageState<AccountInfoWidget>{
  late AccountInfoController accountInfoController = Get.find();
  @override
  void initState() {
    super.initState();
    accountInfoController.isLoading.listen((value) {
      controller.isLoading.value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        controller: controller,
        builder: (context) {
          return Container(
            color: AppColors.backColor2,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.h,
                  ),
                  SizedBox(
                    height: 40.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 8.w, right: 16.w), child: RoundedCachedImage(imgUrl: '${accountInfoController.currentUserEntity?.picture}')),
                        CommonText(
                          text: '${accountInfoController.currentUserEntity?.lastName} ${accountInfoController.currentUserEntity?.firstName}',
                          size: 16,
                          color: AppColors.mainTextColor,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  ),
                  ButtonIcon(
                    icon: AppAssets.writeIcon(color: AppColors.labelColor),
                    text: 'New Direct Message',
                    onPressed: () {
                      Get.toNamed(Routes.NEWCONVERSATION);
                    },
                  ),
                  ButtonIcon(icon: AppAssets.groupIcon(), text: 'New group'),
                  const Spacer(),
                  ButtonIcon(
                    icon: AppAssets.userIcon(),
                    text: 'Sign Out',
                    onPressed: () {
                      showAreYouSure('Log Out', "Are you sure you want lo log out?", () async {
                        await Get.find<RootController>().logout();
                      });
                    },
                  ),
                  SizedBox(
                    height: 15.h,
                  )
                ],
              ),
            ),
          );
        });
  }
}

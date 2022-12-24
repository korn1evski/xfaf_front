import 'package:cached_network_image/cached_network_image.dart';
import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/general/profile_button.dart';
import 'package:chat/routes/app_pages.dart';
import 'package:chat/sections/main/profile/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/round_cached_image.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends BasePageState<ProfileScreen> {
  final double buttonHeight = 50;

  final double buttonWidth = 100;

  final double mainContainerHeight = 400;
  @override
  Widget build(BuildContext context) {
    ProfileController profileController = Get.find();
    return BasePage(controller: controller, builder: (context){
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h,),
            GestureDetector(onTap: (){Get.back();}, child: AppAssets.arrow_back(color: Colors.black, size: 24)),
            Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.h,),
                  RoundedCachedImage(imgUrl: '', size: 120,),
                  SizedBox(height: 20),
                  CommonText(text: profileController.name.value, size: 20, fontWeight: FontWeight.w600,),
                  SizedBox(height: 20.h,),
                  profileController.orphanage.value == 1 ? ProfileButton(onTap: (){Get.toNamed(Routes.ADDCHILD);}, icon: AppAssets.addIcon(color: Colors.black, size: 24), text: 'Add child', withArrow: true,) : SizedBox(),
                  ProfileButton(onTap: (){profileController.logout();}, icon: AppAssets.logoutIcon(color: Colors.black), text: 'Logout', withArrow: true,)
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

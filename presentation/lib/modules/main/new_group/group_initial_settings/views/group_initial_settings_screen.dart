import 'package:chat/common/widgets/auth_input.dart';
import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/custom_app_bar.dart';
import 'package:chat/common/widgets/round_photo.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/generated/locale_keys.loc.dart';
import 'package:chat/modules/main/new_group/group_initial_settings/controllers/group_initial_settings_controller.dart';
import 'package:chat/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' hide Trans;

class GroupInitialSettingsScreen extends StatefulWidget {
  const GroupInitialSettingsScreen({Key? key}) : super(key: key);

  @override
  State<GroupInitialSettingsScreen> createState() =>
      _GroupInitialSettingsScreenState();
}

class _GroupInitialSettingsScreenState
    extends BasePageState<GroupInitialSettingsScreen> {
  final GroupInitialSettingsController groupInitialController = Get.find();

  @override
  dispose(){
    super.dispose();
    Get.delete<GroupInitialSettingsController>();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        controller: controller,
        builder: (context) {
          return SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => CustomAppBar(
                    text: LocaleKeys.groupSettings.tr().capitalize!,
                    withBackArrow: true,
                    nextFunction: () {
                      Get.toNamed(Routes.GROUPMEMBERS, arguments: [
                        {'pictureEntity': groupInitialController.pictureEntity},
                        {
                          'groupName':
                              groupInitialController.nameControllerValue.value
                        }
                      ]);
                    },
                    withNextArrow: groupInitialController
                            .nameControllerValue.value.isNotEmpty &&
                        !groupInitialController.photoIsLoading.value,
                    nextIsLoading: groupInitialController.photoIsLoading.value,
                  )),
              Obx(() => Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.h),
                  child: RoundPhoto(
                    image: groupInitialController.picture.value,
                    pickImage: groupInitialController.pickImage,
                  ))),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: AuthInput(
                  controller: groupInitialController.nameController,
                  labelText: LocaleKeys.name.tr().capitalizeFirst!,
                  onChange: (value) {
                    groupInitialController.nameControllerValue.value = value!;
                  },
                ),
              ),
            ],
          ));
        });
  }
}

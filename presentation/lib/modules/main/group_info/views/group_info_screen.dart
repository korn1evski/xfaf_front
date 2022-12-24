import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/common/widgets/custom_app_bar.dart';
import 'package:chat/common/widgets/round_cached_image.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/generated/locale_keys.loc.dart';
import 'package:chat/modules/main/account/widgets/button_icon.dart';
import 'package:chat/modules/main/conversations/controllers/chats_controller.dart';
import 'package:chat/modules/main/group_info/controllers/group_info_controller.dart';
import 'package:chat/modules/main/new_conversation/widgets/user_tile.dart';
import 'package:chat/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart' hide Trans;

class GroupInfoScreen extends StatefulWidget {
  const GroupInfoScreen({Key? key}) : super(key: key);

  @override
  State<GroupInfoScreen> createState() => _GroupInfoScreenState();
}

class _GroupInfoScreenState extends BasePageState<GroupInfoScreen> {
  final GroupInfoController groupInfoController = Get.find();

  @override
  void initState() {
    super.initState();
    groupInfoController.isLoading.listen((value) {
      controller.isLoading = value.obs;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      controller: controller,
      builder: (context) {
        return SafeArea(
            child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               CustomAppBar(
                text: LocaleKeys.groupSettings.tr().capitalizeFirst!,
                withBackArrow: true,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h),
                child: RoundedCachedImage(
                  imgUrl:
                      groupInfoController.conversationEntity.picture?.url ?? '',
                  size: 100,
                ),
              ),
              CommonText(
                text: groupInfoController.conversationEntity.name,
                size: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.mainTextColor,
              ),
              SizedBox(
                height: 4.h,
              ),
              Obx(() => CommonText(
                    text: '${groupInfoController.members.length} ${LocaleKeys.members.tr()}',
                    size: 14,
                    color: AppColors.mainTextColor,
                  )),
              groupInfoController.members.isNotEmpty &&
                      groupInfoController.conversationEntity.owner.id ==
                          Get.find<ChatsController>().currentUserEntity!.id
                  ? ButtonIcon(
                      icon: AppAssets.addIcon(color: AppColors.mainTextColor),
                      text: LocaleKeys.addMembers.tr().capitalizeFirst!,
                      onPressed: () {
                        Get.toNamed(Routes.ADDMEMBERS,
                            arguments: [groupInfoController.members]);
                      },
                    )
                  : const SizedBox(),
              ...List.generate(groupInfoController.members.length, (index) {
                final currentProfile = groupInfoController.members[index];
                final chatsController = Get.find<ChatsController>();
                return currentProfile.id !=
                        chatsController.currentUserEntity!.id && groupInfoController.conversationEntity.owner.id == chatsController.currentUserEntity!.id
                    ? Slidable(
                        endActionPane: ActionPane(
                            extentRatio: 0.35,
                            motion: const ScrollMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (context) async {
                                  groupInfoController
                                      .deleteMember(currentProfile.id);
                                },
                                backgroundColor: AppColors.authInputColor,
                                icon: Icons.delete,
                                foregroundColor: AppColors.notificationRed,
                              ),
                            ]),
                        child: UserTile(profileEntity: currentProfile))
                    : UserTile(profileEntity: currentProfile);
              })
            ],
          ),
        ));
      },
    );
  }
}

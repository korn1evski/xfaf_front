import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/common/widgets/custom_app_bar.dart';
import 'package:chat/common/widgets/simple_input.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/generated/locale_keys.loc.dart';
import 'package:chat/modules/main/new_group/group_members/controllers/group_members_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' hide Trans;
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../../constants/resources/colors.dart';
import '../../../new_conversation/widgets/user_tile.dart';

class GroupMembersScreen extends StatefulWidget {
  const GroupMembersScreen({Key? key}) : super(key: key);

  @override
  State<GroupMembersScreen> createState() => _GroupMembersScreenState();
}

class _GroupMembersScreenState extends BasePageState<GroupMembersScreen> {
  GroupMembersController groupMembersController = Get.find();

  @override
  initState() {
    super.initState();
    groupMembersController.isLoading.listen((value) {
      controller.isLoading.value = value;
    });
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
              CustomAppBar(
                text: LocaleKeys.addMembers.tr().capitalizeFirst!,
                withBackArrow: true,
                nextFunction: () async{
                  await groupMembersController.createGroup();
                },
                withNextArrow:
                    groupMembersController.selectedUsersId.length >= 2 && !groupMembersController.nextIsLoading.value,
                nextIsLoading: groupMembersController.nextIsLoading.value,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 7.w),
                  child: SimpleInput(
                      controller: groupMembersController.searchController,
                      withPrefix: true,
                      onChange: (value) {
                        groupMembersController.inputValue.value = value!;
                      })),
              groupMembersController.usersList.isEmpty &&
                      !groupMembersController.isLoading.value
                  ? Padding(
                      padding: EdgeInsets.only(top: 200.h),
                      child: Center(
                        child: CommonText(
                          text: LocaleKeys.noUsersFound.tr().capitalizeFirst!,
                          size: 14,
                          color: AppColors.mainTextColor,
                        ),
                      ),
                    )
                  : Obx(() => groupMembersController.isLoading.value
                      ? const SizedBox()
                      : Expanded(
                          child: SmartRefresher(
                            controller:
                                groupMembersController.refreshController,
                            enablePullDown: false,
                            enablePullUp: true,
                            onLoading: () async {
                              await groupMembersController.onLoading();
                            },
                            child: SingleChildScrollView(
                              child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount:
                                    groupMembersController.usersList.length,
                                itemBuilder: (_, index) {
                                  return UserTile(
                                    profileEntity:
                                        groupMembersController.usersList[index],
                                    withSwitch: true,
                                    onSwitch: () {
                                      if (groupMembersController.selectedUsersId
                                          .contains(groupMembersController
                                              .usersList[index].id)) {
                                        groupMembersController.selectedUsersId
                                            .remove(groupMembersController
                                                .usersList[index].id);
                                      } else {
                                        groupMembersController.selectedUsersId
                                            .add(groupMembersController
                                                .usersList[index].id);
                                      }
                                    },
                                  );
                                },
                              ),
                            ),
                          ),
                        ))
            ],
          ));
        });
  }
}

import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/modules/main/add_members/controllers/add_members_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' hide Trans;
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../common/widgets/base/base_page.dart';
import '../../../../common/widgets/common_text.dart';
import '../../../../common/widgets/custom_app_bar.dart';
import '../../../../common/widgets/simple_input.dart';
import '../../../../constants/resources/colors.dart';
import '../../../../generated/locale_keys.loc.dart';
import '../../new_conversation/widgets/user_tile.dart';

class AddMembersScreen extends StatefulWidget {
  const AddMembersScreen({Key? key}) : super(key: key);

  @override
  State<AddMembersScreen> createState() => _AddMembersScreenState();
}

class _AddMembersScreenState extends BasePageState<AddMembersScreen> {

  AddMembersController addMembersController = Get.find();

  @override
  initState() {
    super.initState();
    addMembersController.isLoading.listen((value) {
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
                      await addMembersController.addMembers();
                    },
                    withNextArrow:
                    addMembersController.selectedUsersId.isNotEmpty && !addMembersController.nextIsLoading.value,
                    nextIsLoading: addMembersController.nextIsLoading.value,
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 7.w),
                      child: SimpleInput(
                          controller: addMembersController.searchController,
                          withPrefix: true,
                          onChange: (value) {
                            addMembersController.inputValue.value = value!;
                          })),
                  addMembersController.usersList.isEmpty &&
                      !addMembersController.isLoading.value
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
                      : Obx(() => addMembersController.isLoading.value
                      ? const SizedBox()
                      : Expanded(
                    child: SmartRefresher(
                      controller:
                      addMembersController.refreshController,
                      enablePullDown: false,
                      enablePullUp: true,
                      onLoading: () async {
                        await addMembersController.onLoading();
                      },
                      child: SingleChildScrollView(
                        child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:
                          addMembersController.usersList.length,
                          itemBuilder: (_, index) {
                            return UserTile(
                              profileEntity:
                              addMembersController.usersList[index],
                              withSwitch: true,
                              onSwitch: () {
                                if (addMembersController.selectedUsersId
                                    .contains(addMembersController
                                    .usersList[index].id)) {
                                  addMembersController.selectedUsersId
                                      .remove(addMembersController
                                      .usersList[index].id);
                                } else {
                                  addMembersController.selectedUsersId
                                      .add(addMembersController
                                      .usersList[index].id);
                                }
                              },
                              switchVal: addMembersController.selectedUsersId.contains(addMembersController
                                  .usersList[index].id),
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

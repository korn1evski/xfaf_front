import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/common_text.dart';
import 'package:chat/common/widgets/custom_app_bar.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/modules/main/new_conversation/controllers/new_conversation_controller.dart';
import 'package:chat/modules/main/new_conversation/widgets/user_tile.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;
import '../../../../common/widgets/simple_input.dart';

class NewConversationScreen extends StatefulWidget {
  const NewConversationScreen({Key? key}) : super(key: key);

  @override
  State<NewConversationScreen> createState() => _NewConversationScreenState();
}

class _NewConversationScreenState extends BasePageState<NewConversationScreen> {
  late NewConversationController newConversationController = Get.find();

  @override
  initState() {
    newConversationController.isLoading.listen((value) {
      controller.isLoading.value = value;
    });
    super.initState();
  }

  @override
  dispose(){
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        controller: controller,
        builder: (context) {
          return SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                text: 'EBS Chat',
                withBackArrow: true,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 7.w),
                  child: SimpleInput(
                      controller: newConversationController.searchController,
                      withPrefix: true,
                      onChange: (value) {
                        newConversationController.inputValue.value = value!;
                      })),
              newConversationController.usersList.isEmpty && !newConversationController.isLoading.value
                  ? Padding(
                      padding: EdgeInsets.only(top: 200.h),
                      child: Center(
                        child: CommonText(
                          text: 'No users found',
                          size: 14,
                          color: AppColors.mainTextColor,
                        ),
                      ),
                    )
                  : Obx(() => newConversationController.isLoading.value
                      ? const SizedBox()
                      : Expanded(
                          child: SmartRefresher(
                            controller: newConversationController.refreshController,
                            enablePullDown: false,
                            enablePullUp: true,
                            onLoading: () async {
                              await newConversationController.onLoading();
                            },
                            child: SingleChildScrollView(
                              child: ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: newConversationController.usersList.length,
                                itemBuilder: (_, index) {
                                  return UserTile(
                                    profileEntity: newConversationController.usersList[index],
                                    onTap: () async {
                                      await newConversationController
                                          .startPrivateConversation(newConversationController.usersList[index]);
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

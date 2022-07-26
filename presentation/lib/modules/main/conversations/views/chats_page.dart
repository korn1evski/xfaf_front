import 'package:chat/common/widgets/no_something_widget.dart';
import 'package:chat/constants/app_constants.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/generated/locale_keys.loc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart' hide Trans;
import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/custom_app_bar.dart';
import 'package:chat/common/widgets/simple_input.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../controllers/chats_controller.dart';
import '../widgets/chat_tile.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => ChatsPageState();
}

class ChatsPageState extends BasePageState<ChatsPage> {
  late ChatsController chatsController;
  late RefreshController refreshController;

  @override
  void initState() {
    super.initState();
    refreshController = RefreshController();
    chatsController = Get.find();
    chatsController.isLoading.listen((value) {
      controller.isLoading.value = value;
    });
    WidgetsBinding.instance.addPostFrameCallback((_){
      chatsController.initialLoading();
      chatsController.getConversations();
    });
  }

  @override
  void dispose() {
    super.dispose();
    chatsController.onClose();
    refreshController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        controller: controller,
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Obx(
                () => CustomAppBar(
                  text: 'EBS ${LocaleKeys.chat.tr()}',
                  withWrite: true,
                  withProfileImage: true,
                  pageContext: context,
                  imgUrl: chatsController.profileUrl.value,
                ),
              ),
              Expanded(
                child: SmartRefresher(
                  controller: refreshController,
                  enablePullDown: false,
                  enablePullUp: true,
                  onLoading: () async {
                    await chatsController.onLoading(refreshController);
                  },
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Obx(
                          () => chatsController.isLoading.value
                              ? const SizedBox()
                              : chatsController.conversations.isEmpty
                                  ? Padding(
                                      padding: EdgeInsets.only(top: 150.h),
                                      child: NoSomethingWidget(
                                          icon: AppAssets.bigMessage(
                                              color: AppColors.bigMessageColor),
                                          text: LocaleKeys.letsStartChatting.tr()))
                                  : Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: EdgeInsets.all(8.w),
                                            child: SimpleInput(
                                              controller: chatsController
                                                  .searchController,
                                              withPrefix: true,
                                            )),
                                        ListView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: chatsController
                                                .conversations.length,
                                            shrinkWrap: true,
                                            itemBuilder: (_, index) {
                                              return ChatTile(
                                                conversationEntity:
                                                    chatsController
                                                        .conversations[index],
                                              );
                                            }),
                                      ],
                                    ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        });
  }
}

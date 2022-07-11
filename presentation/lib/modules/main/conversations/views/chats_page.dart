import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:chat/common/widgets/base/base_page.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/custom_app_bar.dart';
import 'package:chat/common/widgets/simple_input.dart';
import '../controllers/chats_controller.dart';
import '../widgets/chat_tile.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => ChatsPageState();
}

class ChatsPageState extends BasePageState<ChatsPage> {
  late ChatsController chatsController = Get.find();

  @override
  void initState() {
    super.initState();
    chatsController.isLoading.listen((value) {
      controller.isLoading.value = value;
    });
    chatsController.initialLoading();
    chatsController.getConversations();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
        controller: controller,
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(
                text: 'EBS chat',
                withWrite: true,
                withProfileImage: true,
                pageContext: context,
                imgUrl: chatsController.profileUrl,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(8.w),
                          child: SimpleInput(
                            controller: chatsController.searchController,
                            withPrefix: true,
                          )),
                      Obx(
                        () => chatsController.isLoading.value
                            ? const SizedBox()
                            : ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: chatsController.conversations.length,
                                shrinkWrap: true,
                                itemBuilder: (_, index) {
                                  return ChatTile(
                                    conversationEntity: chatsController.conversations[index],
                                  );
                                }),
                      ),
                    ],
                  ),
                ),
              )
            ],
          );
        });
  }
}

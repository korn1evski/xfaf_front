import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat/common/widgets/base/base_page_state.dart';
import 'package:chat/common/widgets/custom_app_bar.dart';
import 'package:chat/modules/main/mentions/controllers/mentions_controller.dart';

import '../../../../common/widgets/base/base_page.dart';

class MentionsPage extends StatefulWidget {
  const MentionsPage({Key? key}) : super(key: key);

  @override
  State<MentionsPage> createState() => MentionsPageState();
}

class MentionsPageState extends BasePageState<MentionsPage> {
  late MentionsController mentionsController;
  @override
  void initState(){
    super.initState();
    Get.lazyPut(() => MentionsController());
    mentionsController = Get.find();

  }
  @override
  Widget build(BuildContext context) {
    return BasePage(
        controller: controller,
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(text: 'EBS chat', pageContext: context,)
            ],
          );
        });
  }
}

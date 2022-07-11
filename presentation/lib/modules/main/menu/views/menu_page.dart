import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat/constants/resources/colors.dart';
import 'package:chat/modules/main/menu/controllers/menu_controller.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'nav_bar_widget.dart';

class MenuPage extends StatelessWidget {
  MenuPage({Key? key}) : super(key: key);

  MenuController menuController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => PersistentTabView.custom(
          context,
          backgroundColor: AppColors.backColor2,
          screens: menuController.buildScreens(),
          controller: menuController.tabController,
          customWidget: CustomNavBarWidget(
              selectedIndex: menuController.selectedIndex.value,
              items: menuController.navBarItems(),
              onItemSelected: menuController.changeSelectedIndex),
          itemCount: menuController.navBarItems().length,
        ));
  }
}

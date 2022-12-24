// import 'dart:ui';
//
// import 'package:domain/modules/current_user_session/usecases/remove_current_user_session_use_case.dart';
// import 'package:get/get.dart';
// import 'package:chat/constants/app_constants.dart';
// import 'package:chat/constants/resources/colors.dart';
// import 'package:chat/modules/main/mentions/views/mentions_page.dart';
// import 'package:chat/routes/app_pages.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
//
// import '../../conversations/views/chats_page.dart';
//
// class MenuController extends GetxController {
//
//   PersistentTabController tabController = PersistentTabController();
//
//   final RemoveCurrentUserSessionUseCase removeCurrentUserSessionUseCase;
//
//   MenuController({required this.removeCurrentUserSessionUseCase});
//
//   buildScreens() {
//     return [ChatsPage(), MentionsPage()];
//   }
//
//   Color giveItemColor(int index) {
//     return selectedIndex.value == index ? AppColors.mainTextColor : AppColors.labelColor;
//   }
//
//   Rx<int> selectedIndex = 0.obs;
//
//   void changeSelectedIndex(int value) {
//     selectedIndex.value = value;
//     tabController.index = selectedIndex.value;
//   }
//
//   List<PersistentBottomNavBarItem> navBarItems() {
//     return [
//       PersistentBottomNavBarItem(
//         icon: AppAssets.messageIcon(color: giveItemColor(0)),
//         title: 'Chats',
//       ),
//       PersistentBottomNavBarItem(
//         icon: AppAssets.mentionIcon(color: giveItemColor(1)),
//         title: 'Mentions',
//       ),
//     ];
//   }
//
//   Future<void> logout() async {
//     await removeCurrentUserSessionUseCase.call();
//     Get.offNamed(Routes.LOGIN);
//   }
// }
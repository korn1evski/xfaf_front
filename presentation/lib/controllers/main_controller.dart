import 'dart:ui';

import 'package:get/get.dart';

class MainController extends GetxController {
  Rx<bool> isDarkMode = false.obs;

  void changeThemeMode(Brightness brightness) {
    bool isCurrentModeDark = (brightness == Brightness.dark);
    if (isDarkMode.value != isCurrentModeDark) isDarkMode.value = isCurrentModeDark;
  }
}
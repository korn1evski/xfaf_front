import 'dart:ui';

import 'package:get/get.dart';

import 'package:domain/di/domain_injection_container.dart' as domain_injection;
import 'package:shared_preferences/shared_preferences.dart';
class MainController extends GetxController {
  Rx<bool> isDarkMode = false.obs;

  void changeThemeMode(Brightness brightness) {
    bool isCurrentModeDark = (brightness == Brightness.dark);
    if (isDarkMode.value != isCurrentModeDark) isDarkMode.value = isCurrentModeDark;
  }

  @override
  Future<void> onInit() async{
    super.onInit();
  }
}
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat/controllers/main_controller.dart';

class AppColors {
  static Color get backColor {
    MainController mainController = Get.find();
    return mainController.isDarkMode.value ? Color(0xFF000000) : Color(0xFFFFFFFF);
  }

  static Color get backColor2 {
    MainController mainController = Get.find();
    return mainController.isDarkMode.value ? Color(0xFF101418) : Color(0xFFFFFFFF);
  }

  static Color get mainTextColor{
    MainController mainController = Get.find();
    return mainController.isDarkMode.value ? Color(0xFFFFFFFF) : Color(0xFF000000);
  }

  static Color get mainBorderColor{
    MainController mainController = Get.find();
    return mainController.isDarkMode.value ? Color.fromARGB(60, 255, 255, 255) : Color(0xFFF2F2F2);
  }

  static Color get messageBorderColor{
    MainController mainController = Get.find();
    return mainController.isDarkMode.value ? Colors.transparent : Color(0xFFF2F2F2);
  }


  static Color get getMyMessageColor{
    MainController mainController = Get.find();
    return mainController.isDarkMode.value ? Color(0xFF1C1E22) : Color(0xFFECEBEB);
  }

  static Color get getPersonsMessageColor{
    MainController mainController = Get.find();
    return mainController.isDarkMode.value ? Color(0xFF101418) : Color(0xFFFFFFFF);
  }

  static Color get authInputColor{
    MainController mainController = Get.find();
    return mainController.isDarkMode.value ? Color(0xFF13151B) : Color(0xFFF2F2F2);
  }

  static Color get blueWhiteBack{
    MainController mainController = Get.find();
    return mainController.isDarkMode.value ? Color(0xFFFFFFFF) : Color(0xFF005FFF);
  }

  static Color get blueWhiteText{
    MainController mainController = Get.find();
    return mainController.isDarkMode.value ? Color(0xFF005FFF) : Color(0xFFFFFFFF);
  }



  static final mainBlue = Color(0xFF005FFF);
  static final helpColorRed500 = Color(0xFFF76659);
  static final lightGreyBorder = Color(0xFFDDE2E4);
  static final notificationRed = Color(0xFFFF3742);
  static final helpColorRed600 = Color(0xFFF2271C);
  static final labelColor = Color(0xFF7A7A7A);
  static final onlineColor = Color(0xFF20E070);
}

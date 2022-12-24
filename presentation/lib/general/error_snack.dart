import 'package:get/get.dart';

import '../constants/resources/colors.dart';

SnackbarController snack(String str){
  return Get.snackbar('Errors\n', str,
      backgroundColor: AppColors.blueWhiteBack,
      colorText: AppColors.blueWhiteText,
      snackPosition: SnackPosition.BOTTOM);
}
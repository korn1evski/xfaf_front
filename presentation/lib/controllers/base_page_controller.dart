import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

class BasePageController extends GetxController {
  var isLoading = false.obs;

  void setLoading(bool loading) {
    isLoading.value = loading;
  }
}

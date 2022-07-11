import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Trans;
import 'package:chat/controllers/base_page_controller.dart';

abstract class BasePageState<T extends StatefulWidget> extends State<T> {
  String tag = DateTime.now().toIso8601String();

  late BasePageController controller;

  @override
  void initState() {
    super.initState();
    Get.put(BasePageController(), tag: tag);
    controller = Get.find(tag: tag);
  }

  void showLoading() {
    BasePageController controller = Get.find(tag: tag);
    controller.setLoading(true);
  }

  void hideLoading() {
    BasePageController controller = Get.find(tag: tag);
    controller.setLoading(false);
  }

  @override
  void dispose() {
    super.dispose();
    Get.delete<BasePageController>(tag: tag);
  }
}

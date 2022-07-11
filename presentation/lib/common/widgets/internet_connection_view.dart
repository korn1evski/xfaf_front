import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chat/controllers/internet_connection_controller.dart';

class InternetConnectionView extends StatelessWidget {
  const InternetConnectionView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Obx(
      () {
        InternetConnectionController controller = Get.find();
        return AnimatedContainer(
          color: controller.isConnected.value ? Colors.green : Colors.red,
          duration: const Duration(seconds: 2),
          height: controller.isConnected.value ? 0 : 50,
          child: Center(
            child: Text(controller.isConnected.value ? 'Connected' : 'Check internet connection'),
          ),
        );
      },
    );
  }
}

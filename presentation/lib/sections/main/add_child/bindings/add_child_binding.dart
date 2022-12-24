import 'package:chat/sections/main/add_child/controllers/add_child_controller.dart';
import 'package:get/get.dart';

class AddChildBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddChildController());
  }

}
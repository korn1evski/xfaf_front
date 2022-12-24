import 'package:chat/sections/main/first/controllers/first_controller.dart';
import 'package:get/get.dart';

class FirstBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => FirstController());
  }

}
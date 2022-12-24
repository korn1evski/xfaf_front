import 'package:chat/sections/main/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController());
  }

}
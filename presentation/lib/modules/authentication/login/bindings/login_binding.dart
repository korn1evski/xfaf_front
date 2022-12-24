import 'package:get/get.dart';
import 'package:chat/modules/authentication/login/controllers/login_controller.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
  }
}

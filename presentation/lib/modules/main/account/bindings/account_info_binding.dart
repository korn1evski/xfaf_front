import 'package:chat/modules/main/account/controllers/account_info_controller.dart';
import 'package:get/get.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;

class AccountInfoBinding {
  void dependency(){
    Get.put(AccountInfoController(getCurrentUserSessionUseCase: domain_injection.sl.call()));
  }
}
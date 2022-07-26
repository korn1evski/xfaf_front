import 'package:chat/modules/main/add_members/controllers/add_members_controller.dart';
import 'package:get/get.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;

class AddMembersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddMembersController(getChatUsersUseCase: domain_injection.sl.call(), addMembersUseCase: domain_injection.sl.call()));
  }

}
import 'package:chat/modules/main/new_group/group_members/controllers/group_members_controller.dart';
import 'package:get/get.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;

class GroupMembersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupMembersController(getChatUsersUseCase: domain_injection.sl.call(), createGroupConversationUseCase: domain_injection.sl.call()));
  }

}
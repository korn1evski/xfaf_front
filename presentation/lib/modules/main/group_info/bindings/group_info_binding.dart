import 'package:chat/modules/main/group_info/controllers/group_info_controller.dart';
import 'package:get/get.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;

class GroupInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupInfoController(
        getRoomMembersUseCase: domain_injection.sl.call(),
        deleteRoomMemberUseCase: domain_injection.sl.call()));
  }
}

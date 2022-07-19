import 'package:chat/modules/main/new_group/group_initial_settings/controllers/group_initial_settings_controller.dart';
import 'package:get/get.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;

class GroupInitialSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupInitialSettingsController(uploadFilesUseCase: domain_injection.sl.call()));
  }
}
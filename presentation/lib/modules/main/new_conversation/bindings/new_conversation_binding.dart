

import 'package:get/get.dart';
import 'package:chat/modules/main/new_conversation/controllers/new_conversation_controller.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;

class NewConversationBinding extends Bindings {
  @override
  void dependencies() {
   Get.lazyPut(() => NewConversationController(getChatUsersUseCase: domain_injection.sl.call(), startPrivateConversationUseCase: domain_injection.sl.call()));
  }
}
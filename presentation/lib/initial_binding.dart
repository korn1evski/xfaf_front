import 'package:get/get.dart';
import 'package:chat/modules/main/mentions/controllers/mentions_controller.dart';
import 'package:chat/modules/main/menu/controllers/menu_controller.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;

import 'modules/main/account/controllers/account_info_controller.dart';
import 'modules/main/conversations/controllers/chats_controller.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    // Initialize persistent tab's initial pages
    Get.put(MentionsController());
    Get.put(ChatsController(
        deleteConversationMemberUseCase: domain_injection.sl.call(),
        deleteConversationUseCase: domain_injection.sl.call(),
        getCurrentUserSessionUseCase: domain_injection.sl.call(),
        getConversationsUseCase: domain_injection.sl.call(),
        getConversationsControllerUseCase: domain_injection.sl.call(),
      getMessagesControllerUseCase: domain_injection.sl.call()
    ));
    Get.put(AccountInfoController(getCurrentUserSessionUseCase: domain_injection.sl.call()));
  }
}

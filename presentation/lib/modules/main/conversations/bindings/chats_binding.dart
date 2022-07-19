import 'package:chat/modules/main/conversations/controllers/chats_controller.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;
import 'package:get/get.dart';

class ChatsBinding {
  void dependency(){
    Get.put(ChatsController(
        deleteConversationMemberUseCase: domain_injection.sl.call(),
        deleteConversationUseCase: domain_injection.sl.call(),
        getCurrentUserSessionUseCase: domain_injection.sl.call(),
        getConversationsUseCase: domain_injection.sl.call(),
        getConversationsControllerUseCase: domain_injection.sl.call(),
        getMessagesControllerUseCase: domain_injection.sl.call()
    ));
  }
}
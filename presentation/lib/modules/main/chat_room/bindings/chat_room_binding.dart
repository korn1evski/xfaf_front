import 'package:get/get.dart';
import 'package:chat/modules/main/chat_room/controllers/chat_room_controller.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;

class ChatRoomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatRoomController(
        getMessagesUseCase: domain_injection.sl.call(),
        sendMessageUseCase: domain_injection.sl.call(),
        getMessagesControllerUseCase: domain_injection.sl.call(),
        uploadFilesUseCase: domain_injection.sl.call(),
        setSharedStringUseCase: domain_injection.sl.call()));
  }
}

import 'package:chat/modules/main/chat_room/controllers/file_preview_controller.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:get/get.dart';
import 'package:domain/di/domain_injection_container.dart' as domain_injection;

class FilePreviewBinding {
  void dependencies(PictureEntity fileEntity) {
    Get.put(
        FilePreviewController(
            getSharedStringUseCase: domain_injection.sl.call(),
            setSharedStringUseCase: domain_injection.sl.call(),
            downloadFileUseCase: domain_injection.sl.call(),
            saveDownloadedFileUseCase: domain_injection.sl.call(),
          fileEntity: fileEntity
        ),
        tag: fileEntity.id);
  }
}

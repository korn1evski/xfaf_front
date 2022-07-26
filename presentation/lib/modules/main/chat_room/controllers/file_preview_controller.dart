import 'dart:io';

import 'package:chat/constants/resources/help_functions.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/common/usecases/download_file_usecase.dart';
import 'package:domain/modules/common/usecases/get_shared_string_usecase.dart';
import 'package:domain/modules/common/usecases/save_downloaded_file_usecase.dart';
import 'package:domain/modules/common/usecases/set_shared_string_usecase.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';

class FilePreviewController extends GetxController {
  final GetSharedStringUseCase getSharedStringUseCase;
  final SetSharedStringUseCase setSharedStringUseCase;
  final DownloadFileUseCase downloadFileUseCase;
  final SaveDownloadedFileUseCase saveDownloadedFileUseCase;
  Rx<bool> isDownloading = false.obs;
  Rx<bool> isDownloaded = false.obs;
  Rxn<String> filePath = Rxn();
  late String fileId;
  late String fileUrl;
  final PictureEntity fileEntity;

  FilePreviewController({required this.getSharedStringUseCase,
    required this.setSharedStringUseCase,
    required this.downloadFileUseCase,
    required this.saveDownloadedFileUseCase,
    required this.fileEntity
  });

  void checkIfDownloaded() {
    final result = getSharedStringUseCase.call(fileId);
    if (result != null && File(result).existsSync()) {
      isDownloaded.value = true;
      filePath.value = result;
    }
  }

  Future<void> downloadFile() async {
    setIsLoading(isDownloading);
    final response = await downloadFileUseCase.call(fileUrl);
    late dynamic bytes;
    response.fold((l){
      return;
    }, (r){
      bytes = r;
    });

    final file = await saveDownloadedFileUseCase.call(bytes, '$fileId.${fileEntity.extension}');
    setSharedStringUseCase.call(fileId, file.path);
    setIsLoading(isDownloading);
    filePath.value = file.path;
    isDownloaded.value = true;
  }

  Future<void> fileOnTap() async{
    if(isDownloaded.value){
      OpenFile.open(filePath.value);
    } else {
      await downloadFile();
    }
  }

  @override
  void onInit() {
    super.onInit();
    fileId = fileEntity.id;
    fileUrl = fileEntity.url;
    checkIfDownloaded();
  }
}

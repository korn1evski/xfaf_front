import 'dart:io';

import 'package:domain/modules/common/repository/files_repository.dart';

class SaveDownloadedFileUseCase {
  final FilesRepository filesRepository;

  SaveDownloadedFileUseCase({required this.filesRepository});

  Future<File> call(dynamic bytes, String id){
    return filesRepository.saveDownloadedFile(bytes, id);
  }
}
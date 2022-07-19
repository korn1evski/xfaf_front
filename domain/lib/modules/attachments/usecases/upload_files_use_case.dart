

import 'package:dartz/dartz.dart';
import 'package:domain/modules/attachments/repository/attachments_repository.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'dart:io';
import '../../../../core/errors/failure.dart';
import '../../../../core/usecase.dart';

class UploadFilesUseCase extends UseCase<List<PictureEntity>, List<File>>{
  final AttachmentsRepository attachmentsRepository;
  UploadFilesUseCase({required this.attachmentsRepository});
  @override
  Future<Either<Failure, List<PictureEntity>>> call(List<File> files) async{
    return attachmentsRepository.uploadFiles(files);
  }

}
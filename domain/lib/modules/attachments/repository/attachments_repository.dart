import 'package:dartz/dartz.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'dart:io';

import '../../../core/errors/failure.dart';

abstract class AttachmentsRepository {
  Future<Either<Failure, List<PictureEntity>>> uploadFiles(List<File> files);
  Future<Either<Failure, PictureEntity>> getAttachment(String id);
}
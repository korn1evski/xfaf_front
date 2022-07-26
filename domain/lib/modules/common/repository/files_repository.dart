import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';

abstract class FilesRepository{
  Future<Either<Failure, dynamic>> downloadFile(String url);
  Future<File> saveDownloadedFile(dynamic bytes, String id);
}
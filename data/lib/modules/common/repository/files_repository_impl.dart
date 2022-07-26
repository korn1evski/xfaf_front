import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:data/modules/common/sources/files_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/common/repository/files_repository.dart';

class FilesRepositoryImpl extends FilesRepository {

  final FilesDataSource filesDataSource;

  FilesRepositoryImpl({required this.filesDataSource});

  @override
  Future<Either<Failure, dynamic>> downloadFile(String url) async{
    try {
      final response = await filesDataSource.downloadFile(url);
      return Right(response);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }

  @override
  Future<File> saveDownloadedFile(bytes, String id) async{
    return await filesDataSource.saveDownloadedFile(bytes, id);
  }

}
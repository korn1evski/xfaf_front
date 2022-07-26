import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/core/usecase.dart';
import 'package:domain/modules/common/repository/files_repository.dart';

class DownloadFileUseCase extends UseCase<dynamic, String>{
  final FilesRepository filesRepository;

  DownloadFileUseCase({required this.filesRepository});

  @override
  Future<Either<Failure, dynamic>> call(String url) {
    return filesRepository.downloadFile(url);
  }

}
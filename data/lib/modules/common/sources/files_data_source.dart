import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

abstract class FilesDataSource {
  Future<dynamic> downloadFile(String url);
  Future<File> saveDownloadedFile(dynamic bytes, String id);
}

class FilesDataSourceImpl extends FilesDataSource {
  final Dio dio;

  FilesDataSourceImpl({required this.dio});

  @override
  Future<dynamic> downloadFile(String url) async {
    final response = await dio.get(url,
        options: Options(
            responseType: ResponseType.bytes,
            followRedirects: false,
            receiveTimeout: 0));
    return response.data;
  }

  @override
  Future<File> saveDownloadedFile(dynamic bytes, String id) async{
    final appStorage = await getApplicationDocumentsDirectory();
    final file = File('${appStorage.path}/$id');

    final raf = file.openSync(mode: FileMode.write);
    raf.writeFromSync(bytes);
    await raf.close();

    return file;
  }
}

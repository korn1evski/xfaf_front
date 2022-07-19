import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'dart:typed_data';
import 'dart:ui';

import 'package:constants/api_constants.dart';
import 'package:data/modules/attachments/repository/attachemts_repository_impl.dart';
import 'package:data/modules/chat/remote/conversations/models/index.dart';
import 'package:data/modules/chat/remote/profile/models/index.dart';
import 'package:dio/dio.dart';
import 'package:data/di/data_injection_container.dart' as data_injection;

import '../../../core/interceptors/dio_request_interceptor.dart';

abstract class AttachmentsDataSource {
  Future<List<PictureApiDto>> uploadFiles(List<File> files);
}

class AttachmentsDataSourceImpl implements AttachmentsDataSource {
  final Dio dioClient;

  AttachmentsDataSourceImpl({required this.dioClient});

  @override
  Future<List<PictureApiDto>> uploadFiles(List<File> files) async {
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    List<MultipartFile> multiparts = [];
    for (var file in files) {
      final MultipartFile multipartFile = await MultipartFile.fromFile(file.path, filename: file.path.split('/').last);
      multiparts.add(multipartFile);
    }
    FormData formData = FormData.fromMap({'files' : multiparts});
    final response = await dioClient.post(APIConfigURL.baseUrl + 'attachments',
        options: Options(headers: {
          'x-api-key': 'e54f6ed4520845d5a9ff4c0b26d5a378',
          'Content-Type' : 'multipart/form-data'
        }),
        data: formData);
    List<PictureApiDto> listApiPictures = List<PictureApiDto>.from(
        response.data['data'].map((model) => PictureApiDto.fromJson(model)));

    return listApiPictures;
  }
}

import 'package:constants/api_constants.dart';
import 'package:data/modules/chat/remote/profile/models/index.dart';
import 'package:dio/dio.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:data/di/data_injection_container.dart' as data_injection;

import '../../../../../core/interceptors/dio_request_interceptor.dart';

abstract class ProfileApiDataSource {
  Future<ProfileApiDto> getProfile();
}

class ProfileApiDataSourceImpl implements ProfileApiDataSource {
  ProfileApiDataSourceImpl({required this.dioClient});

  final Dio dioClient;

  @override
  Future<ProfileApiDto> getProfile() async {
    data_injection.sl<RequestInterceptor>().setHandleErrors(false);
    final response = await dioClient.get(APIConfigURL.baseUrl + 'users/profile',
        options: Options(headers: {'x-api-key': 'e54f6ed4520845d5a9ff4c0b26d5a378'}));

    final ProfileApiDto profileApiDto = ProfileApiDto.fromJson(response.data['data']);
    return profileApiDto;
  }
}

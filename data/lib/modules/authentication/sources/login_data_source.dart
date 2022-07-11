
import 'package:dio/dio.dart';
import 'package:domain/modules/authentication/entities/index.dart';
import 'package:data/di/data_injection_container.dart' as data_injection;

import '../../../core/interceptors/dio_request_interceptor.dart';
import '../models/index.dart';

abstract class LoginDataSource {
  Future<AuthJWTResponseApiDto> login(LoginEntity loginEntity);
}

class LoginDataSourceImpl extends LoginDataSource {
  final String baseUrl = 'https://sso.api.dev.ebs.io/';
  final Dio dioClient;

  LoginDataSourceImpl({required this.dioClient});
  @override
  Future<AuthJWTResponseApiDto> login(LoginEntity loginEntity) async{
    data_injection.sl<RequestInterceptor>().setHandleErrors(true);
    final response = await dioClient.post(baseUrl + '/authorization/token/', data: {
      'username' : loginEntity.username,
      'password' :loginEntity.password
    });

    final authJWTResponseApiDto = AuthJWTResponseApiDto.fromJson(response.data);
    return authJWTResponseApiDto;
  }

}
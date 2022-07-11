import 'package:data/modules/user/models/index.dart';
import 'package:data/modules/user/sources/api/user_api_service.dart';
import 'package:dio/dio.dart';

abstract class UserApiDataSource {
  Future<UserResponseApiDto> getUsers(int page, int limit);
}

class UserApiDataSourceImpl implements UserApiDataSource {
  final Dio dioClient;
  final UserApiService _userApiService;

  UserApiDataSourceImpl({required this.dioClient}) : _userApiService = UserApiService.create(dioClient);

  @override
  Future<UserResponseApiDto> getUsers(int page, int limit) {
    return _userApiService.getUsers(page, limit);
  }
}

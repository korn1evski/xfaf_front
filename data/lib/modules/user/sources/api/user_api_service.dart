import 'package:data/modules/user/models/index.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'user_api_service.g.dart';

@RestApi(baseUrl: '')
abstract class UserApiService {
  static UserApiService create(Dio client) {
    return _UserApiService(client);
  }

  @GET('/data/v1/user')
  Future<UserResponseApiDto> getUsers(@Query('page') int page, @Query('limit') int limit);
}

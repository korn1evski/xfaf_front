import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:domain/modules/authentication/entities/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/index.dart';

abstract class ManageTokensDataSource {
  AuthJWTResponseApiDto? getTokens();

  Future<void> saveTokens(String accessToken, String refreshToken);

  Future<void> deleteTokens();
}

class ManageTokensDataSourceImpl extends ManageTokensDataSource {
  final SharedPreferences sharedPreferences;
  final Dio dioClient;

  ManageTokensDataSourceImpl({required this.sharedPreferences, required this.dioClient});

  @override
  AuthJWTResponseApiDto? getTokens() {
    final String? accessToken = sharedPreferences.getString('accessToken');
    final String? refreshToken = sharedPreferences.getString('refreshToken');
    if (accessToken != null && refreshToken != null) {
      return AuthJWTResponseApiDto(access: accessToken, refresh: refreshToken);
    }
    return null;
  }

  @override
  Future<void> saveTokens(String accessToken, String refreshToken) async {
    await sharedPreferences.setString('accessToken', accessToken);
    await sharedPreferences.setString('refreshToken', refreshToken);
  }

  @override
  Future<void> deleteTokens() async {
    await sharedPreferences.remove('accessToken');
    await sharedPreferences.remove('refreshToken');
  }

  // @override
  // Future<AccessTokenApiDto?> getAccessToken() async {
  //   final AuthJWTResponseApiDto? JWTResponse= await getTokens();
  //   late String refreshToken;
  //   if(JWTResponse != null){
  //     refreshToken = JWTResponse.refresh;
  //   } else {
  //     return null;
  //   }
  //   final response = await dioClient.post(baseUrl + '/authorization/token/refresh/', data: {'refresh': refreshToken});
  //   final AccessTokenApiDto accessTokenApiDto = AccessTokenApiDto.fromJson(response.data);
  //   return accessTokenApiDto;
  // }
}

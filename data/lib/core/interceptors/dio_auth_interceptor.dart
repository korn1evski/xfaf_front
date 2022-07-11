import 'package:data/modules/authentication/sources/manage_tokens_data_source.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:jwt_decode/jwt_decode.dart';

import '../../modules/authentication/models/index.dart';
import '../../modules/current_user_session/sources/current_user_local_data_source.dart';

class DioAuthInterceptor extends QueuedInterceptorsWrapper {
  final ManageTokensDataSource manageTokensDataSource;

  DioAuthInterceptor({required this.manageTokensDataSource});

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    // get tokens from local storage, you can use Hive or flutter_secure_storage
    AuthJWTResponseApiDto? jwtTokens = manageTokensDataSource.getTokens();

    if (jwtTokens == null) {
      await _performLogout(errorResponse: null, logout: true);
      return handler.next(options);
    }

    // check if tokens have already expired or not
    // I use jwt_decoder package
    // Note: ensure your tokens has "exp" claim
    final accessTokenHasExpired = Jwt.isExpired(jwtTokens.access);
    final refreshTokenHasExpired = Jwt.isExpired(jwtTokens.refresh);

    var _refreshed = true;

    print('accessTokenHasExpired $accessTokenHasExpired refreshTokenHasExpired $refreshTokenHasExpired ');
    if (refreshTokenHasExpired) {
      await _performLogout(errorResponse: null, logout: true);

      // create custom dio error
      options.extra["tokenErrorType"] = 'EXPIRED';
      final error = DioError(requestOptions: options, type: DioErrorType.other);

      return handler.reject(error);
    } else if (accessTokenHasExpired) {
      _refreshed = await _regenerateAccessToken();
      //
      // accessToken = await GetIt.I<AuthLocalDataSource>().getToken();

      // regenerate access token
    }
    print('refreshed $_refreshed');
    if (_refreshed) {
      // add access token to the request header
        options.headers['Authorization'] = 'Bearer ${jwtTokens.access}';
      return handler.next(options);
    } else {
      // create custom dio error
      options.extra["logout"] = 'logout';
      final error = DioError(requestOptions: options, type: DioErrorType.other);
      await _performLogout(errorResponse: error.response);
      return handler.reject(error);
    }
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      // for some reasons the token can be invalidated before it is expired by the backend.
      // then we should navigate the current_user back to login page

      await _performLogout(errorResponse: err.response);
    }
    return handler.reject(err);
  }

  Future<void> _performLogout({required Response? errorResponse, bool logout = false}) async {
    print('_performLogout: ${errorResponse?.data}');
    if (errorResponse != null && errorResponse.data != null) {
      if (errorResponse.data['reason'] != null) {
      } else {
        await manageTokensDataSource.deleteTokens();
        await GetIt.I<CurrentUserLocalDataSource>().removeCurrentUser();
      }
    } else if (logout) {
      await manageTokensDataSource.deleteTokens();
      await GetIt.I<CurrentUserLocalDataSource>().removeCurrentUser();
    } // remove token from local storage
  }

  /// return true if it is successfully regenerate the access token
  Future<bool> _regenerateAccessToken() async {
    try {
      var dio = Dio(); // should create new dio instance because the request interceptor is being locked

      final String baseUrl = 'https://sso.api.dev.ebs.io/';

      dio.interceptors.add(
        LogInterceptor(
            error: !kReleaseMode,
            request: !kReleaseMode,
            requestHeader: !kReleaseMode,
            requestBody: !kReleaseMode,
            responseBody: !kReleaseMode,
            responseHeader: !kReleaseMode),
      );
      // get refresh token from local storage
      // final refreshToken = _localStorage.getRefreshToken();
      AuthJWTResponseApiDto? jwtTokens = manageTokensDataSource.getTokens();

      // make request to server to get the new access token from server using refresh token
      if (jwtTokens != null) {
        final response =
            await dio.post(baseUrl + '/authorization/token/refresh/', data: {'refresh': jwtTokens.refresh});
        if (response.statusCode == 200 || response.statusCode == 201) {
          AccessTokenApiDto accessTokenApiDto = AccessTokenApiDto.fromJson((response.data));
          await manageTokensDataSource.saveTokens(accessTokenApiDto.access, jwtTokens.refresh);
          return true;
        } else if (response.statusCode == 401) {
          // it means your refresh token no longer valid now, it may be revoked by the backend
          _performLogout(errorResponse: response);
          return false;
        } else {
          print(response.statusCode);
          return false;
        }
      } else {
        return false;
      }
    } on DioError {
      print('DioError refresh ');
      return false;
    } catch (e) {
      print('DioError refresh $e ');
      return false;
    }
  }
}

import 'package:dartz/dartz.dart';
import 'package:data/modules/authentication/mappers/authentication_mapper.dart';
import 'package:data/modules/authentication/sources/manage_tokens_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/authentication/entities/index.dart';
import 'package:domain/modules/authentication/repository/authentication_repository.dart';
import '../sources/login_data_source.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  final LoginDataSource loginDataSource;
  final ManageTokensDataSource manageTokensDataSource;
  final Dio apiClient;
  final QueuedInterceptorsWrapper interceptor;

  AuthenticationRepositoryImpl({ required this.loginDataSource, required this.manageTokensDataSource, required this.apiClient, required this.interceptor});

  @override
  Future<Either<Failure, bool>> login(LoginEntity loginEntity) async{
    try{
      final response = await loginDataSource.login(loginEntity);
      await manageTokensDataSource.saveTokens(response.access, response.refresh);
      apiClient.interceptors.add(interceptor);
      return Right(true);
    } catch (e){
      if(e is DioError){
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }

  @override
  AuthJWTResponseEntity? getTokens() {
    final response = manageTokensDataSource.getTokens();
    if(response != null) {
      return AuthenticationMapper().authJWTResponseToEntity(response);
    } else {
      return null;
    }
  }

}
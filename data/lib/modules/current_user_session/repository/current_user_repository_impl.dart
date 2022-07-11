import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:data/modules/current_user_session/mappers/current_user_mapping.dart';
import 'package:data/modules/current_user_session/sources/current_user_local_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:data/modules/authentication/sources/manage_tokens_data_source.dart';

import 'package:domain/modules/current_user_session/entities/index.dart';
import 'package:domain/modules/current_user_session/repository/current_user_repository.dart';

class CurrentUserRepositoryImpl extends CurrentUserRepository {
  final CurrentUserLocalDataSource currentUserLocalDataSource;
  final ManageTokensDataSource manageTokensDataSource;
  final Dio apiClient;
  final QueuedInterceptorsWrapper interceptor;

  CurrentUserRepositoryImpl({required this.currentUserLocalDataSource, required this.manageTokensDataSource, required this.apiClient, required this.interceptor});

  @override
  Future<Either<Failure, CurrentUserEntity?>> getCurrentUser() async {
    var currentUserDb = await currentUserLocalDataSource.getCurrentUser();

    if (currentUserDb != null) {
      return Right(CurrentUserMapping().mapDBtoEntity(currentUserDb));
    } else {
      return Right(null);
    }
  }

  @override
  Future<Either<Failure, void>> removeCurrentUser() async {
    apiClient.interceptors.remove(interceptor);
    manageTokensDataSource.deleteTokens();
    return Right(await currentUserLocalDataSource.removeCurrentUser());
  }
}

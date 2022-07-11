import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:data/core/local_database/moor_database.dart';
import 'package:data/modules/user/models/mappers/user_mapping.dart';
import 'package:data/modules/user/sources/api/user_api_data_source.dart';
import 'package:data/modules/user/sources/local/user_local_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/user/entities/index.dart';
import 'package:domain/modules/user/repository/user_repository.dart';
import 'package:collection/collection.dart';

class UserRepositoryImpl extends UserRepository {
  final UserApiDataSource userApiDataSource;
  final UserLocalDataSource userLocalDataSource;

  UserRepositoryImpl({required this.userApiDataSource, required this.userLocalDataSource});

  @override
  Stream<Either<Failure, List<UserEntity>>> getUsers(int offset, int limit) {
    return userLocalDataSource.getUsers(offset, limit).map((event) {
      return Right(event.map(UserMapping().mapDbToEntity).toList());
    });
  }

  @override
  Future<Either<Failure, List<UserEntity>>> getUsersApi(int page, int limit) async {
    try {
      final response = await userApiDataSource.getUsers(page, limit);
      return Right(response.data.map((e) => UserMapping().mapApiToEntity(e)).toList());
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure(errorObject: e.response!.data));
      }
      return Left(OtherFailure());
    }
  }

  @override
  Future<void> insertUsers(List<UserEntity> users) {
    return userLocalDataSource.insertUsers(users.map((e) => UserMapping().mapEntityToDb(e)).toList());
  }

  @override
  Future<void> insertUsersList(List<String> userIds, int page) {
    List<UsersListDbData> data = [];
    userIds.forEachIndexed((index, element) {
      data.add(UsersListDbData(userId: element, order: index, page: page));
    });
    return userLocalDataSource.insertUsersList(data);
  }
}

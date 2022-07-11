import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/user/entities/index.dart';

abstract class UserRepository {
  Future<Either<Failure, List<UserEntity>>> getUsersApi(int page, int limit);

  Stream<Either<Failure, List<UserEntity>>> getUsers(int offset, int limit);

  Future<void> insertUsers(List<UserEntity> users);

  Future<void> insertUsersList(List<String> userIds, int page);
}

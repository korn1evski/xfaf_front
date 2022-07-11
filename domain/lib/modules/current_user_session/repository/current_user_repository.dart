import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';

import '../entities/index.dart';

abstract class CurrentUserRepository {
  Future<Either<Failure, CurrentUserEntity?>> getCurrentUser();
  Future<Either<Failure, void>> removeCurrentUser();
}

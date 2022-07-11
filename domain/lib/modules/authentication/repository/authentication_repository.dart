import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../entities/index.dart';

abstract class AuthenticationRepository{
  Future<Either<Failure, bool>> login(LoginEntity loginEntity);
  AuthJWTResponseEntity? getTokens();
}
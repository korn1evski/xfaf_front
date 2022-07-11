import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/core/usecase.dart';
import 'package:domain/modules/current_user_session/entities/index.dart';
import 'package:domain/modules/current_user_session/repository/current_user_repository.dart';

class GetCurrentUserSessionUseCase extends UseCaseNoParams<CurrentUserEntity?>{
  final CurrentUserRepository userRepository;

  GetCurrentUserSessionUseCase({required this.userRepository});

  @override
  Future<Either<Failure, CurrentUserEntity?>> call() async {
    var userResponse = await userRepository.getCurrentUser();
    CurrentUserEntity? user;
    userResponse.fold((l) => null, (r) => user = r);
    return Right(user);
  }
}

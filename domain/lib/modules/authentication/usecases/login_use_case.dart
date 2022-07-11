
import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/core/usecase.dart';
import 'package:domain/modules/authentication/entities/index.dart';
import 'package:domain/modules/authentication/repository/authentication_repository.dart';

class LoginUseCase extends UseCase<bool, LoginEntity>{
  final AuthenticationRepository authenticationRepository;

  LoginUseCase({required this.authenticationRepository});

  @override
  Future<Either<Failure, bool>> call(LoginEntity loginEntity) async{
    return await authenticationRepository.login(loginEntity);
  }
}
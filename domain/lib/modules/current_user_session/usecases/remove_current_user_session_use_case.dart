import 'package:dartz/dartz.dart';

import '../../../core/errors/failure.dart';
import '../../../core/usecase.dart';
import '../repository/current_user_repository.dart';

class RemoveCurrentUserSessionUseCase extends UseCaseNoParams<void>{
  final CurrentUserRepository userRepository;

  RemoveCurrentUserSessionUseCase({required this.userRepository});

  @override
  Future<Either<Failure, void>> call() async {
   return await userRepository.removeCurrentUser();
  }
}
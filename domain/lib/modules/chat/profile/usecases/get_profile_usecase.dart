import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/core/usecase.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/chat/profile/repository/profile_repository.dart';

class GetProfileUseCase extends UseCaseNoParams {
  GetProfileUseCase({required this.profileRepository});

  final ProfileRepository profileRepository;

  @override
  Future<Either<Failure, ProfileEntity>> call() async {
    return profileRepository.getProfile();
  }
}

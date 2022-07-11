import 'package:dartz/dartz.dart';
import 'package:data/modules/chat/remote/profile/models/mappers/profile_mapper.dart';
import 'package:data/modules/chat/remote/profile/sources/profile_api_data_source.dart';
import 'package:data/modules/current_user_session/sources/current_user_local_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/chat/profile/repository/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl({required this.profileApiDataSource, required this.currentUserLocalDataSource});

  final ProfileApiDataSource profileApiDataSource;
  final CurrentUserLocalDataSource currentUserLocalDataSource;

  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    try {
      final response = await profileApiDataSource.getProfile();
      ProfileEntity profileEntity = ProfileMapper().profileEntityFromApiDto(response);
      await currentUserLocalDataSource.insertCurrentUser(ProfileMapper().profileEntityToCurrentUserEntity(profileEntity));
      return Right(profileEntity);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }
}

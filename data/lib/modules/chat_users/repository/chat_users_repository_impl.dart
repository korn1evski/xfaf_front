import 'package:dartz/dartz.dart';
import 'package:data/modules/chat/remote/profile/models/mappers/profile_mapper.dart';
import 'package:data/modules/chat_users/sources/chat_users_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/chat_users/repository/chat_users_repository.dart';
import 'package:domain/modules/chat_users/usecases/get_chat_users_usecase.dart';

class ChatUsersRepositoryImpl extends ChatUsersRepository {
  final ChatUsersDataSource chatUsersDataSource;

  ChatUsersRepositoryImpl({required this.chatUsersDataSource});

  @override
  Future<Either<Failure, List<ProfileEntity>>> getChatUsers(ChatUsersParams chatUsersParams) async{
    final result = chatUsersDataSource.getChatUsers(chatUsersParams);
    try {
      final response = await chatUsersDataSource.getChatUsers(chatUsersParams);
      List<ProfileEntity> profileList = ProfileMapper().listProfileToEntity(response);
      return Right(profileList);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }

}
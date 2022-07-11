import 'package:dartz/dartz.dart';
import 'package:data/modules/chat/remote/profile/models/mappers/profile_mapper.dart';
import 'package:data/modules/chat/remote/room/models/mappers/room_mapper.dart';
import 'package:data/modules/chat/remote/room/sources/room_data_source.dart';
import 'package:dio/dio.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/chat/room/entities/index.dart';
import 'package:domain/modules/chat/room/repository/room_repository.dart';
import 'package:domain/modules/chat/room/usecases/get_messages_usecase.dart';
import 'package:domain/modules/chat/room/usecases/send_message_usecase.dart';

class RoomRepositoryImpl extends RoomRepository {
  final RoomDataSource roomDataSource;

  RoomRepositoryImpl({required this.roomDataSource});

  @override
  Future<Either<Failure, List<ProfileEntity>>> getRoomMembers(String conversationId) async {
    try {
      final response = await roomDataSource.getRoomMembers(conversationId);
      List<ProfileEntity> profileEntities = ProfileMapper().listProfileToEntity(response);
      return Right(profileEntities);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }

  @override
  Future<Either<Failure, List<MessageEntity>>> getMessages(GetMessagesParams getMessagesParams) async {
    try {
      final response = await roomDataSource.getMessages(getMessagesParams);
      List<MessageEntity> messageEntities = RoomMapper().messagesFromDto(response);
      return Right(messageEntities);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }

  @override
  Future<Either<Failure, MessageEntity>> sendMessage(SendMessageParams sendMessageParams) async{
    try{
      final response = await roomDataSource.sendMessage(sendMessageParams);
      MessageEntity messageEntity = RoomMapper().messageFromDto(response);
      return Right(messageEntity);
    } catch(e){
      if(e is DioError){
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }
}

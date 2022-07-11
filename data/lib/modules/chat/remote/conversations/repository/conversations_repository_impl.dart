import 'package:dartz/dartz.dart';
import 'package:data/modules/chat/remote/conversations/models/mappers/conversations_mapper.dart';
import 'package:data/modules/chat/remote/conversations/sources/conversations_data_source.dart';
import 'package:data/modules/chat/remote/profile/models/mappers/profile_mapper.dart';
import 'package:dio/dio.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/conversations/repository/conversations_repository.dart';
import 'package:domain/modules/chat/conversations/usecases/delete_conversation_member_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/delete_conversation_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/get_conversations_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/start_private_conversation_usecase.dart';

class ConversationsRepositoryImpl extends ConversationsRepository {
  final ConversationsDataSource conversationsDataSource;

  ConversationsRepositoryImpl({required this.conversationsDataSource});

  @override
  Future<Either<Failure, List<ConversationEntity>>> getConversations(
      GetConversationsParams getConversationsParams) async {
    try {
      final response = await conversationsDataSource.getConversations(getConversationsParams);
      List<ConversationEntity> conversationEntities = ConversationsMapper().listConversationsApiToEntities(response);
      return Right(conversationEntities);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }

  @override
  Future<Either<Failure, void>> deleteConversationMember(
      DeleteConversationMemberParams deleteConversationMemberParams) async {
    try {
      final response = await conversationsDataSource.deleteConversationMember(deleteConversationMemberParams);
      return Right(null);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }

  @override
  Future<Either<Failure, void>> deleteConversation(DeleteConversationParams deleteConversationParams) async{
    try {
      final response = await conversationsDataSource.deleteConversation(deleteConversationParams);
      return Right(null);
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }

  @override
  Future<Either<Failure, ConversationEntity>> startPrivateConversation(StartPrivateConversationParams startPrivateConversationParams) async{
    try {
      final response = await conversationsDataSource.startPrivateConversation(startPrivateConversationParams);
      return Right(ConversationsMapper().conversationEntityFromDto(response));
    } catch (e) {
      if (e is DioError) {
        return Left(ServerFailure(errorObject: e.response!.data));
      }
    }
    return Left(OtherFailure());
  }
}

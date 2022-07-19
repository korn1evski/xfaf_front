
import 'package:dartz/dartz.dart';
import 'package:domain/modules/chat/conversations/usecases/create_group_conversation_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/delete_conversation_member_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/get_conversations_usecase.dart';
import 'package:domain/modules/chat/conversations/usecases/start_private_conversation_usecase.dart';

import '../../../../core/errors/failure.dart';
import '../entities/index.dart';
import '../usecases/delete_conversation_usecase.dart';

abstract class ConversationsRepository {
  Future<Either<Failure, List<ConversationEntity>>> getConversations(GetConversationsParams getConversationsParams);
  Future<Either<Failure, void>> deleteConversationMember(DeleteConversationMemberParams deleteConversationMemberParams);
  Future<Either<Failure, void>> deleteConversation(DeleteConversationParams deleteConversationParams);
  Future<Either<Failure, ConversationEntity>> startPrivateConversation(StartPrivateConversationParams startPrivateConversationParams);
  Future<Either<Failure, ConversationWebSocketEntity>> createGroupConversation(CreateGroupConversationParams params);
}
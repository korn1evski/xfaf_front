import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/conversations/repository/conversations_repository.dart';

import '../../../../core/usecase.dart';

class CreateGroupConversationUseCase extends UseCase<ConversationWebSocketEntity, CreateGroupConversationParams>{
  final ConversationsRepository conversationsRepository;

  CreateGroupConversationUseCase({required this.conversationsRepository});
  @override
  Future<Either<Failure, ConversationWebSocketEntity>> call(CreateGroupConversationParams params) async{
    return conversationsRepository.createGroupConversation(params);
  }

}

class CreateGroupConversationParams{
  CreateGroupConversationParams({required this.name, required this.members, this.type = '2', this.picture});
  final String name;
  final String type;
  final List<String> members;
  final String? picture;
}
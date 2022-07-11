import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/core/usecase.dart';
import 'package:domain/modules/chat/conversations/repository/conversations_repository.dart';

class DeleteConversationUseCase extends UseCase<void, DeleteConversationParams>{

  DeleteConversationUseCase({required this.conversationsRepository});

  final ConversationsRepository conversationsRepository;
  @override
  Future<Either<Failure, void>> call(DeleteConversationParams deleteConversationParams) async{
    return conversationsRepository.deleteConversation(deleteConversationParams);
  }

}

class DeleteConversationParams {
  DeleteConversationParams({required this.conversationId});
  final String conversationId;
}
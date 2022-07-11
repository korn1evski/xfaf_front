import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/conversations/repository/conversations_repository.dart';

import '../../../../core/usecase.dart';

class StartPrivateConversationUseCase extends UseCase<ConversationEntity, StartPrivateConversationParams>{
  final ConversationsRepository conversationsRepository;
  StartPrivateConversationUseCase({required this.conversationsRepository});
  @override
  Future<Either<Failure, ConversationEntity>> call(StartPrivateConversationParams params) async{
    return conversationsRepository.startPrivateConversation(params);
  }

}

class StartPrivateConversationParams {
  StartPrivateConversationParams({required this.name, this.type = 1, required this.memberId});
  final String name;
  final int type;
  final String memberId;
}
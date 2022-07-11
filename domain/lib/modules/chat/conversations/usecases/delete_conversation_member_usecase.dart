import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase.dart';
import '../repository/conversations_repository.dart';

class DeleteConversationMemberUseCase extends UseCase<void, DeleteConversationMemberParams> {
  final ConversationsRepository conversationsRepository;

  DeleteConversationMemberUseCase({required this.conversationsRepository});

  @override
  Future<Either<Failure, void>> call(DeleteConversationMemberParams deleteConversationMemberParams) async{
    return conversationsRepository.deleteConversationMember(deleteConversationMemberParams);
  }
}

class DeleteConversationMemberParams {
  DeleteConversationMemberParams({required this.conversationId, required this.memberId});
  final String conversationId;
  final String memberId;
}
import 'package:dartz/dartz.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/conversations/repository/conversations_repository.dart';
import 'package:domain/modules/current_user_session/usecases/get_current_user_session_use_case.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase.dart';

class GetConversationsUseCase extends UseCase<List<ConversationEntity>, GetConversationsParams> {
  final ConversationsRepository conversationsRepository;

  GetConversationsUseCase({required this.conversationsRepository});

  @override
  Future<Either<Failure, List<ConversationEntity>>> call(GetConversationsParams getConversationsParams) async{
    return conversationsRepository.getConversations(getConversationsParams);
  }
}

class GetConversationsParams {
  GetConversationsParams({required this.page, this.limit = 30});
  final int page;
  final int limit;
}

import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/core/usecase.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/chat_users/repository/chat_users_repository.dart';

class GetChatUsersUseCase extends UseCase<List<ProfileEntity>, ChatUsersParams> {
  final ChatUsersRepository chatUsersRepository;

  GetChatUsersUseCase({required this.chatUsersRepository});

  @override
  Future<Either<Failure, List<ProfileEntity>>> call(ChatUsersParams chatUsersParams) {
    return chatUsersRepository.getChatUsers(chatUsersParams);
  }

}

class ChatUsersParams {
  ChatUsersParams({required this.page, required this.search, this.limit = 15});
  final int page;
  final String search;
  final int limit;
}
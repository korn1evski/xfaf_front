import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/core/usecase.dart';
import 'package:domain/modules/chat/conversations/repository/conversations_repository.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';

class AddMembersUseCase extends UseCase<List<ProfileEntity>, AddMembersParams>{

  final ConversationsRepository conversationsRepository;

  AddMembersUseCase({required this.conversationsRepository});
  @override
  Future<Either<Failure, List<ProfileEntity>>> call(AddMembersParams params) {
   return conversationsRepository.addMembers(params);
  }

}

class AddMembersParams {
  final List<String> membersId;
  final String conversationId;

  AddMembersParams({required this.membersId, required this.conversationId});
}
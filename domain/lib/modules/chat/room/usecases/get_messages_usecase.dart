import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/core/usecase.dart';
import 'package:domain/modules/chat/room/entities/index.dart';
import 'package:domain/modules/chat/room/repository/room_repository.dart';

class GetMessagesUseCase extends UseCase<List<MessageEntity>, GetMessagesParams> {
  final RoomRepository roomRepository;
  GetMessagesUseCase({required this.roomRepository});

  @override
  Future<Either<Failure, List<MessageEntity>>> call(GetMessagesParams getMessagesParams) async{
    return roomRepository.getMessages(getMessagesParams);
  }
}

class GetMessagesParams {
  GetMessagesParams({required this.page, required this.conversationId, this.limit = 15});
  final int page;
  final String conversationId;
  final int limit;
}

import 'package:dartz/dartz.dart';
import 'package:domain/modules/chat/room/entities/index.dart';

import '../../../../core/errors/failure.dart';
import '../../../../core/usecase.dart';
import '../repository/room_repository.dart';

class SendMessageUseCase extends UseCase<MessageEntity, SendMessageParams> {
  final RoomRepository roomRepository;
  SendMessageUseCase({required this.roomRepository});

  @override
  Future<Either<Failure, MessageEntity>> call(SendMessageParams sendMessageParams) async{
    return roomRepository.sendMessage(sendMessageParams);
  }
}

class SendMessageParams {
  SendMessageParams({required this.conversationId, required this.message});
  final String conversationId;
  final String message;
}
import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/core/usecase.dart';
import 'package:domain/modules/chat/room/repository/room_repository.dart';

class DeleteRoomMemberUseCase extends UseCase<void, DeleteMemberParams>{
  final RoomRepository roomRepository;

  DeleteRoomMemberUseCase({required this.roomRepository});
  @override
  Future<Either<Failure, void>> call(DeleteMemberParams params) {
    return roomRepository.deleteRoomMember(params);
  }
}

class DeleteMemberParams {
  final String conversationId;
  final String memberId;

  DeleteMemberParams({required this.memberId, required this.conversationId});
}
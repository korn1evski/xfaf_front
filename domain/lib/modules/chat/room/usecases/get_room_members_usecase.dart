import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';

import '../../../../core/usecase.dart';
import '../repository/room_repository.dart';

class GetRoomMembersUseCase extends UseCase<List<ProfileEntity>, String> {
  final RoomRepository roomRepository;
  GetRoomMembersUseCase({required this.roomRepository});

  @override
  Future<Either<Failure, List<ProfileEntity>>> call(String conversationId) async{
    return roomRepository.getRoomMembers(conversationId);
  }
}
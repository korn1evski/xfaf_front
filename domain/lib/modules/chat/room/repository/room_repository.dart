import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/chat/room/entities/index.dart';
import 'package:domain/modules/chat/room/usecases/delete_room_member_usecase.dart';
import 'package:domain/modules/chat/room/usecases/get_messages_usecase.dart';
import 'package:domain/modules/chat/room/usecases/send_message_usecase.dart';

import '../../conversations/entities/index.dart';

abstract class RoomRepository {
  Future<Either<Failure, List<ProfileEntity>>> getRoomMembers(String conversationId);
  Future<Either<Failure, List<MessageEntity>>> getMessages(GetMessagesParams getMessagesParams);
  Future<Either<Failure, MessageEntity>> sendMessage(SendMessageParams sendMessageParams);
  Future<Either<Failure, void>> deleteRoomMember(DeleteMemberParams deleteMemberParams);
 }
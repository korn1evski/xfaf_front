import 'package:dartz/dartz.dart';
import 'package:domain/modules/chat/profile/entities/index.dart';
import 'package:domain/modules/chat_users/usecases/get_chat_users_usecase.dart';

import '../../../core/errors/failure.dart';
import '../../user/entities/index.dart';

abstract class ChatUsersRepository{
  Future<Either<Failure, List<ProfileEntity>>> getChatUsers(ChatUsersParams chatUsersParams);
}
import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:domain/core/errors/failure.dart';
import 'package:domain/core/usecase.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/websocket/repository/websocket_repository.dart';

class GetConversationsControllerUseCase {
  final WebSocketRepository webSocketRepository;

  GetConversationsControllerUseCase({required this.webSocketRepository});

  StreamController<ConversationEventEntity> call() {
    return webSocketRepository.getConversationsController();
  }

}
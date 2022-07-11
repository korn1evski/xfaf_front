import 'dart:async';

import 'package:domain/modules/websocket/repository/websocket_repository.dart';
import 'package:domain/modules/chat/room/entities/index.dart';


class GetMessagesControllerUseCase {
  final WebSocketRepository webSocketRepository;

  GetMessagesControllerUseCase({required this.webSocketRepository});

  StreamController<MessageEntity> call(){
    return webSocketRepository.getMessagesController();
  }
}
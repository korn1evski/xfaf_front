import 'dart:async';

import 'package:data/modules/websocket/sources/websocket_data_source.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/room/entities/index.dart';
import 'package:domain/modules/websocket/repository/websocket_repository.dart';

class WebSocketRepositoryImpl extends WebSocketRepository{
  final WebSocketDataSource webSocketDataSource;

  WebSocketRepositoryImpl({required this.webSocketDataSource});

  @override
  void startWebSocket() {
    return webSocketDataSource.startWebSocket();
  }

  @override
  StreamController<ConversationEventEntity> getConversationsController() {
    return webSocketDataSource.getConversationsController();
  }

  @override
  StreamController<MessageEntity> getMessagesController() {
    return webSocketDataSource.getMessagesController();
  }

}
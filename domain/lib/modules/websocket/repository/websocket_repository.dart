import 'dart:async';

import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:domain/modules/chat/room/entities/index.dart';

abstract class WebSocketRepository {
  void startWebSocket();
  void closeWebSocket();
  StreamController<ConversationEventEntity> getConversationsController();
  StreamController<MessageEntity> getMessagesController();
}
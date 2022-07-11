import 'dart:async';

import 'package:data/modules/authentication/repository/authentication_repository_impl.dart';
import 'package:data/modules/chat/remote/conversations/models/index.dart';
import 'package:data/modules/chat/remote/conversations/models/mappers/conversations_mapper.dart';
import 'package:data/modules/chat/remote/room/models/index.dart';
import 'package:data/modules/chat/remote/room/models/mappers/room_mapper.dart';
import 'package:domain/modules/chat/conversations/entities/index.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

import '../../authentication/sources/manage_tokens_data_source.dart';
import 'package:domain/modules/chat/room/entities/index.dart';

abstract class WebSocketDataSource {
  void startWebSocket();
  StreamController<ConversationEventEntity> getConversationsController();
  StreamController<MessageEntity> getMessagesController();
}

class WebSocketDataSourceImpl implements WebSocketDataSource {
  final ManageTokensDataSource manageTokensDataSource;

  WebSocketDataSourceImpl({required this.manageTokensDataSource});

  final StreamController<ConversationEventEntity> conversationController = StreamController<ConversationEventEntity>();
  final StreamController<MessageEntity> messagesController = StreamController();

  @override
  void startWebSocket() {
    final tokens = manageTokensDataSource.getTokens();
    if (tokens != null) {
      IO.Socket socket = IO.io('wss://chat.api.dev.ebs.io', <String, dynamic>{
        'transports': ['websocket'],
        'path': '/websockets',
        'x_api_key': 'e54f6ed4520845d5a9ff4c0b26d5a378',
        'token': tokens.access
      });

      socket.onConnect((_) {
        print('connect');
      });
      socket.on('message', (data){
        try{
          final conversationEventApiDto = ConversationEventApiDto.fromJson(data);
          final conversationWebSocketApiEntity = ConversationsMapper().conversationEventToEntity(conversationEventApiDto);
          conversationController.sink.add(conversationWebSocketApiEntity);
          print('conv converted');
        } catch(e){}
        try{
          final messageApiDto =  MessageApiDto.fromJson(data['data']);
          final messageEntity = RoomMapper().messageFromDto(messageApiDto);
          messagesController.sink.add(messageEntity);
        } catch(e){}
      });
      socket.onDisconnect((_) => print('disconnect'));

      socket.open();
    }
  }

  @override
  StreamController<ConversationEventEntity> getConversationsController() {
    return conversationController;
  }

  @override
  StreamController<MessageEntity> getMessagesController() {
    return messagesController;
  }


}

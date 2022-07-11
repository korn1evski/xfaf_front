import 'package:domain/modules/websocket/repository/websocket_repository.dart';

class StartWebSocketUseCase {
  final WebSocketRepository webSocketRepository;

  StartWebSocketUseCase({required this.webSocketRepository});

  void call(){
    return webSocketRepository.startWebSocket();
  }
}
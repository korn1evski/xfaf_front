import 'package:domain/modules/websocket/repository/websocket_repository.dart';

class CloseWebSocketUseCase {
  final WebSocketRepository webSocketRepository;

  CloseWebSocketUseCase({required this.webSocketRepository});

  void call(){
    return webSocketRepository.closeWebSocket();
  }
}
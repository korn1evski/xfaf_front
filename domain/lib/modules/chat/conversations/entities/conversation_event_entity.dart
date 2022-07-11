part of conversations_entities;

@freezed
class ConversationEventEntity with _$ConversationEventEntity {
  factory ConversationEventEntity({
    required String event,
    required ConversationWebSocketEntity conversation
  }) = _ConversationEventEntity;

}
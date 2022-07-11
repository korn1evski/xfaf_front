part of conversations_models;

@freezed
class ConversationEventApiDto with _$ConversationEventApiDto {
  factory ConversationEventApiDto({
    required String event,
    @JsonKey(name: 'data') required ConversationWebSocketApiDto conversation
  }) = _ConversationEventApiDto;

  factory ConversationEventApiDto.fromJson(Map<String, dynamic> json) => _$ConversationEventApiDtoFromJson(json);
}
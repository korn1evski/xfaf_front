part of profile_models;


@freezed
class ProfileApiDto with _$ProfileApiDto {
  factory ProfileApiDto({
    @JsonKey(name: '_id') required String id,
    required String email,
    @JsonKey(name: 'first_name') required String firstName,
    @JsonKey(name: 'last_name') required String lastName,
    String? phone,
    String? photo,
    required String sso,
    required List<String> keys,
    Notifications?notifications,
    String? timestamp,
    @JsonKey(name: 'edited_timestamp') String? editedTimestamp,
    Settings? settings,
  }) = _ProfileApiDto;

  factory ProfileApiDto.fromJson(Map<String, dynamic> json) => _$ProfileApiDtoFromJson(json);
}

class Notifications {
  Notifications({
    required this.tokens,
  });

  final List<dynamic> tokens;

  factory Notifications.fromJson(Map<String, dynamic> json) => Notifications(
    tokens: List<dynamic>.from(json["tokens"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "tokens": List<dynamic>.from(tokens.map((x) => x)),
  };
}

class Settings {
  Settings({
    required this.language,
  });

  final String language;

  factory Settings.fromJson(Map<String, dynamic> json) => Settings(
    language: json["language"],
  );

  Map<String, dynamic> toJson() => {
    "language": language,
  };
}

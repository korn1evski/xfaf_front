part of authentication_model;

@freezed
class AccessTokenApiDto with _$AccessTokenApiDto {
  const factory AccessTokenApiDto({
    required String access,
  }) = _AccessTokenApiDto;

  factory AccessTokenApiDto.fromJson(Map<String, dynamic> json) => _$AccessTokenApiDtoFromJson(json);

}
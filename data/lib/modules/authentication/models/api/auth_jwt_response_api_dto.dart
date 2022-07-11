part of authentication_model;

@freezed
class AuthJWTResponseApiDto with _$AuthJWTResponseApiDto {
  const factory AuthJWTResponseApiDto({
    required String access,
    required String refresh
  }) = _AuthJWTResponseApiDto;

  factory AuthJWTResponseApiDto.fromJson(Map<String, dynamic> json) => _$AuthJWTResponseApiDtoFromJson(json);

}
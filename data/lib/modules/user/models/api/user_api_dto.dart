part of user_model;

@freezed
class UserApiDto with _$UserApiDto {
  factory UserApiDto({
    required String id,
    required String firstName,
    required String lastName,
    required String picture,
  }) = _UserApiDto;

  factory UserApiDto.fromJson(Map<String, dynamic> json) => _$UserApiDtoFromJson(json);
}

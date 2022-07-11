part of user_model;


@freezed
class UserResponseApiDto with _$UserResponseApiDto {
  factory UserResponseApiDto({
    required List<UserApiDto> data,
  }) = _UserResponseApiDto;

  factory UserResponseApiDto.fromJson(Map<String, dynamic> json) => _$UserResponseApiDtoFromJson(json);
}

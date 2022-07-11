part of user_entity_model;

@freezed
class UserEntity with _$UserEntity {
  factory UserEntity({
    required String id,
    required String firstName,
    required String lastName,
    String? picture,
  }) = _UserEntity;
}
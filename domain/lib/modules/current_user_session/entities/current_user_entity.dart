part of current_user_models;

@freezed
class CurrentUserEntity with _$CurrentUserEntity {
  CurrentUserEntity._();

  factory CurrentUserEntity({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    required String? picture,
  }) = _CurrentUserEntity;
}

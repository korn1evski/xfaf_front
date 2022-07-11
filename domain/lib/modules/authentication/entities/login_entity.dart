part of authentication_model;

@freezed
class LoginEntity with _$LoginEntity {
  const factory LoginEntity({
    required String username,
    required String password
  }) = _LoginEntity;
}

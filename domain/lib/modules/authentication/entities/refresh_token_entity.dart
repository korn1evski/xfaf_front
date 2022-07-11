part of authentication_model;

@freezed
class RefreshTokenEntity with _$RefreshTokenEntity {
  const factory RefreshTokenEntity({
    required String refresh,
  }) = _RefreshTokenEntity;
}
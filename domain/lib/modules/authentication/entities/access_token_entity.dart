part of authentication_model;

@freezed
class AccessTokenEntity with _$AccessTokenEntity {
  const factory AccessTokenEntity({
    required String access,
  }) = _AccessTokenEntity;
}
part of authentication_model;

@freezed
class AuthJWTResponseEntity with _$AuthJWTResponseEntity {
  const factory AuthJWTResponseEntity({
    required String access,
    required String refresh,
  }) = _AuthJWTResponseEntity;
}
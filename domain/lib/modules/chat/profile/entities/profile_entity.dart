part of profile_entities;

@freezed
class ProfileEntity with _$ProfileEntity {
  ProfileEntity._();

  factory ProfileEntity({
    required String id,
    required String email,
    required String firstName,
    required String lastName,
    String? photo,
    required String sso,
    required List<String> keys,
  }) = _ProfileEntity;
}

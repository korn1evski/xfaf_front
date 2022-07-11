// GENERATED CODE - DO NOT MODIFY BY HAND

part of profile_models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileApiDto _$$_ProfileApiDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfileApiDto(
      id: json['_id'] as String,
      email: json['email'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
      phone: json['phone'] as String?,
      photo: json['photo'] as String?,
      sso: json['sso'] as String,
      keys: (json['keys'] as List<dynamic>).map((e) => e as String).toList(),
      notifications: json['notifications'] == null
          ? null
          : Notifications.fromJson(
              json['notifications'] as Map<String, dynamic>),
      timestamp: json['timestamp'] as String?,
      editedTimestamp: json['edited_timestamp'] as String?,
      settings: json['settings'] == null
          ? null
          : Settings.fromJson(json['settings'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProfileApiDtoToJson(_$_ProfileApiDto instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'phone': instance.phone,
      'photo': instance.photo,
      'sso': instance.sso,
      'keys': instance.keys,
      'notifications': instance.notifications,
      'timestamp': instance.timestamp,
      'edited_timestamp': instance.editedTimestamp,
      'settings': instance.settings,
    };

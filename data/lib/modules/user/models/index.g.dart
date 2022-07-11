// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserApiDto _$$_UserApiDtoFromJson(Map<String, dynamic> json) =>
    _$_UserApiDto(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      picture: json['picture'] as String,
    );

Map<String, dynamic> _$$_UserApiDtoToJson(_$_UserApiDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'picture': instance.picture,
    };

_$_UserResponseApiDto _$$_UserResponseApiDtoFromJson(
        Map<String, dynamic> json) =>
    _$_UserResponseApiDto(
      data: (json['data'] as List<dynamic>)
          .map((e) => UserApiDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserResponseApiDtoToJson(
        _$_UserResponseApiDto instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

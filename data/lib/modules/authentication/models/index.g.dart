// GENERATED CODE - DO NOT MODIFY BY HAND

part of authentication_model;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccessTokenApiDto _$$_AccessTokenApiDtoFromJson(Map<String, dynamic> json) =>
    _$_AccessTokenApiDto(
      access: json['access'] as String,
    );

Map<String, dynamic> _$$_AccessTokenApiDtoToJson(
        _$_AccessTokenApiDto instance) =>
    <String, dynamic>{
      'access': instance.access,
    };

_$_AuthJWTResponseApiDto _$$_AuthJWTResponseApiDtoFromJson(
        Map<String, dynamic> json) =>
    _$_AuthJWTResponseApiDto(
      access: json['access'] as String,
      refresh: json['refresh'] as String,
    );

Map<String, dynamic> _$$_AuthJWTResponseApiDtoToJson(
        _$_AuthJWTResponseApiDto instance) =>
    <String, dynamic>{
      'access': instance.access,
      'refresh': instance.refresh,
    };

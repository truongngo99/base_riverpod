// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthDto _$$_AuthDtoFromJson(Map<String, dynamic> json) => _$_AuthDto(
      accessToken: json['access_token'] as String,
      expireAt: json['expire_at'] as int,
      refreshToken: json['refresh_token'] as String,
    );

Map<String, dynamic> _$$_AuthDtoToJson(_$_AuthDto instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'expire_at': instance.expireAt,
      'refresh_token': instance.refreshToken,
    };

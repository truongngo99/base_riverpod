// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserInfoResponse _$$_UserInfoResponseFromJson(Map<String, dynamic> json) =>
    _$_UserInfoResponse(
      message: json['message'] as String,
      data: UserInfoData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserInfoResponseToJson(_$_UserInfoResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_UserInfoData _$$_UserInfoDataFromJson(Map<String, dynamic> json) =>
    _$_UserInfoData(
      email: json['email'] as String,
      firstName: StName.fromJson(json['firstName'] as Map<String, dynamic>),
      lastName: StName.fromJson(json['lastName'] as Map<String, dynamic>),
      birthday: DateTime.parse(json['birthday'] as String),
      couponCode: json['couponCode'],
      subscription: json['subscription'] as bool,
      primaryLanguage:
          AryLanguage.fromJson(json['primaryLanguage'] as Map<String, dynamic>),
      secondaryLanguage: AryLanguage.fromJson(
          json['secondaryLanguage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserInfoDataToJson(_$_UserInfoData instance) =>
    <String, dynamic>{
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'birthday': instance.birthday.toIso8601String(),
      'couponCode': instance.couponCode,
      'subscription': instance.subscription,
      'primaryLanguage': instance.primaryLanguage,
      'secondaryLanguage': instance.secondaryLanguage,
    };

_$_StName _$$_StNameFromJson(Map<String, dynamic> json) => _$_StName(
      ja: json['ja'] as String,
      en: json['en'] as String,
    );

Map<String, dynamic> _$$_StNameToJson(_$_StName instance) => <String, dynamic>{
      'ja': instance.ja,
      'en': instance.en,
    };

_$_AryLanguage _$$_AryLanguageFromJson(Map<String, dynamic> json) =>
    _$_AryLanguage(
      code: json['code'] as String,
      name: json['name'] as String,
      nameJa: json['nameJa'] as String,
    );

Map<String, dynamic> _$$_AryLanguageToJson(_$_AryLanguage instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'nameJa': instance.nameJa,
    };

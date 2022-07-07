// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfoData _$UserInfoDataFromJson(Map<String, dynamic> json) => UserInfoData(
      email: json['email'] as String,
      firstName: StName.fromJson(json['first_name'] as Map<String, dynamic>),
      lastName: StName.fromJson(json['last_name'] as Map<String, dynamic>),
      birthday: DateTime.parse(json['birthday'] as String),
      couponCode: json['coupon_code'],
      subscription: json['subscription'] as bool,
      primaryLanguage: AryLanguage.fromJson(
          json['primary_language'] as Map<String, dynamic>),
      secondaryLanguage: AryLanguage.fromJson(
          json['secondary_language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserInfoDataToJson(UserInfoData instance) =>
    <String, dynamic>{
      'email': instance.email,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'birthday': instance.birthday.toIso8601String(),
      'coupon_code': instance.couponCode,
      'subscription': instance.subscription,
      'primary_language': instance.primaryLanguage,
      'secondary_language': instance.secondaryLanguage,
    };

AryLanguage _$AryLanguageFromJson(Map<String, dynamic> json) => AryLanguage(
      code: json['code'] as String?,
      name: json['name'] as String?,
      nameJa: json['name_ja'] as String?,
    );

Map<String, dynamic> _$AryLanguageToJson(AryLanguage instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'name_ja': instance.nameJa,
    };

_$_StName _$$_StNameFromJson(Map<String, dynamic> json) => _$_StName(
      ja: json['ja'] as String?,
      en: json['en'] as String?,
    );

Map<String, dynamic> _$$_StNameToJson(_$_StName instance) => <String, dynamic>{
      'ja': instance.ja,
      'en': instance.en,
    };

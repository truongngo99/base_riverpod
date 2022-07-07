// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guide_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuideInfoData _$GuideInfoDataFromJson(Map<String, dynamic> json) =>
    GuideInfoData(
      id: json['id'] as int,
      username: json['username'] as String,
      firstName: json['first_name'] == null
          ? null
          : FirstName.fromJson(json['first_name'] as Map<String, dynamic>),
      lastName: json['last_name'] == null
          ? null
          : FirstName.fromJson(json['last_name'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : FirstName.fromJson(json['name'] as Map<String, dynamic>),
      nickname: json['nickname'] == null
          ? null
          : FirstName.fromJson(json['nickname'] as Map<String, dynamic>),
      title: json['title'] == null
          ? null
          : FirstName.fromJson(json['title'] as Map<String, dynamic>),
      gender: json['gender'] as String,
      phoneNumber: json['phone_number'] as String?,
      contactEmail: json['contact_email'] as String?,
      profileThemeColor: json['profile_theme_color'] as String?,
      primaryLanguage: json['primary_language'] == null
          ? null
          : AryLanguage.fromJson(
              json['primary_language'] as Map<String, dynamic>),
      secondaryLanguage: json['secondary_language'] == null
          ? null
          : AryLanguage.fromJson(
              json['secondary_language'] as Map<String, dynamic>),
      publishing: json['publishing'] as bool,
    );

Map<String, dynamic> _$GuideInfoDataToJson(GuideInfoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'name': instance.name,
      'nickname': instance.nickname,
      'title': instance.title,
      'gender': instance.gender,
      'phone_number': instance.phoneNumber,
      'contact_email': instance.contactEmail,
      'profile_theme_color': instance.profileThemeColor,
      'primary_language': instance.primaryLanguage,
      'secondary_language': instance.secondaryLanguage,
      'publishing': instance.publishing,
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

_$_FirstName _$$_FirstNameFromJson(Map<String, dynamic> json) => _$_FirstName(
      ja: json['ja'] as String?,
      en: json['en'] as String?,
      vi: json['vi'] as String?,
    );

Map<String, dynamic> _$$_FirstNameToJson(_$_FirstName instance) =>
    <String, dynamic>{
      'ja': instance.ja,
      'en': instance.en,
      'vi': instance.vi,
    };

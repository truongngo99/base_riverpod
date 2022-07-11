// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopProfileData _$TopProfileDataFromJson(Map<String, dynamic> json) =>
    TopProfileData(
      id: json['id'] as int,
      username: json['username'] as String,
      avatarUrl: json['avatar_url'] as String?,
      firstName: Name.fromJson(json['first_name'] as Map<String, dynamic>),
      lastName: Name.fromJson(json['last_name'] as Map<String, dynamic>),
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      profileThemeColor: json['profile_theme_color'] as String?,
      primaryLanguage: AryLanguage.fromJson(
          json['primary_language'] as Map<String, dynamic>),
      secondaryLanguage: AryLanguage.fromJson(
          json['secondary_language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TopProfileDataToJson(TopProfileData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar_url': instance.avatarUrl,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'name': instance.name,
      'profile_theme_color': instance.profileThemeColor,
      'primary_language': instance.primaryLanguage,
      'secondary_language': instance.secondaryLanguage,
    };

AryLanguage _$AryLanguageFromJson(Map<String, dynamic> json) => AryLanguage(
      code: json['code'] as String,
      name: json['name'] as String?,
      nameJa: json['name_ja'] as String?,
    );

Map<String, dynamic> _$AryLanguageToJson(AryLanguage instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'name_ja': instance.nameJa,
    };

_$_Name _$$_NameFromJson(Map<String, dynamic> json) => _$_Name(
      ja: json['ja'] as String?,
      en: json['en'] as String?,
    );

Map<String, dynamic> _$$_NameToJson(_$_Name instance) => <String, dynamic>{
      'ja': instance.ja,
      'en': instance.en,
    };

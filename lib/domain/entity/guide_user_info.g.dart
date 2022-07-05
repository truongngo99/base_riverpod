// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guide_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GuideUserInfoResponse _$$_GuideUserInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GuideUserInfoResponse(
      message: json['message'] as String,
      data: GuideUserInfoData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GuideUserInfoResponseToJson(
        _$_GuideUserInfoResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_GuideUserInfoData _$$_GuideUserInfoDataFromJson(Map<String, dynamic> json) =>
    _$_GuideUserInfoData(
      id: json['id'] as int,
      username: json['username'] as String,
      firstName: FirstName.fromJson(json['firstName'] as Map<String, dynamic>),
      lastName: FirstName.fromJson(json['lastName'] as Map<String, dynamic>),
      name: FirstName.fromJson(json['name'] as Map<String, dynamic>),
      nickname: FirstName.fromJson(json['nickname'] as Map<String, dynamic>),
      title: FirstName.fromJson(json['title'] as Map<String, dynamic>),
      gender: json['gender'] as String,
      phoneNumber: json['phoneNumber'] as String,
      contactEmail: json['contactEmail'] as String,
      profileThemeColor: json['profileThemeColor'] as String,
      primaryLanguage:
          AryLanguage.fromJson(json['primaryLanguage'] as Map<String, dynamic>),
      secondaryLanguage: AryLanguage.fromJson(
          json['secondaryLanguage'] as Map<String, dynamic>),
      publishing: json['publishing'] as bool,
    );

Map<String, dynamic> _$$_GuideUserInfoDataToJson(
        _$_GuideUserInfoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'name': instance.name,
      'nickname': instance.nickname,
      'title': instance.title,
      'gender': instance.gender,
      'phoneNumber': instance.phoneNumber,
      'contactEmail': instance.contactEmail,
      'profileThemeColor': instance.profileThemeColor,
      'primaryLanguage': instance.primaryLanguage,
      'secondaryLanguage': instance.secondaryLanguage,
      'publishing': instance.publishing,
    };

_$_FirstName _$$_FirstNameFromJson(Map<String, dynamic> json) => _$_FirstName(
      ja: json['ja'] as String,
      en: json['en'] as String,
    );

Map<String, dynamic> _$$_FirstNameToJson(_$_FirstName instance) =>
    <String, dynamic>{
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

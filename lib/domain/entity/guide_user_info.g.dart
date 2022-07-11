// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guide_user_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GuideUserInfoData _$GuideUserInfoDataFromJson(Map<String, dynamic> json) =>
    GuideUserInfoData(
      id: json['id'] as int,
      username: json['username'] as String,
      avatarUrl: json['avatar_url'] as String,
      coverImageUrl: json['cover_image_url'] as String,
      firstName:
          Catchphrase.fromJson(json['first_name'] as Map<String, dynamic>),
      lastName: Catchphrase.fromJson(json['last_name'] as Map<String, dynamic>),
      name: Catchphrase.fromJson(json['name'] as Map<String, dynamic>),
      nickname: Catchphrase.fromJson(json['nickname'] as Map<String, dynamic>),
      lastLogin:
          Catchphrase.fromJson(json['last_login'] as Map<String, dynamic>),
      status: json['status'] as String,
      catchphrase:
          Catchphrase.fromJson(json['catchphrase'] as Map<String, dynamic>),
      age: json['age'] as int,
      gender: json['gender'] as String,
      places: (json['places'] as List<dynamic>)
          .map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
      travelOrganizations: TravelOrganizations.fromJson(
          json['travel_organizations'] as Map<String, dynamic>),
      languageSkills: (json['language_skills'] as List<dynamic>)
          .map((e) => LanguageSkill.fromJson(e as Map<String, dynamic>))
          .toList(),
      phoneNumber: json['phone_number'] as String,
      contactEmail: json['contact_email'] as String,
      primaryLanguage: AryLanguage.fromJson(
          json['primary_language'] as Map<String, dynamic>),
      secondaryLanguage: AryLanguage.fromJson(
          json['secondary_language'] as Map<String, dynamic>),
      publishing: json['publishing'] as bool,
      title: Catchphrase.fromJson(json['title'] as Map<String, dynamic>),
      profileThemeColor: json['profile_theme_color'] as String,
    );

Map<String, dynamic> _$GuideUserInfoDataToJson(GuideUserInfoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'avatar_url': instance.avatarUrl,
      'cover_image_url': instance.coverImageUrl,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'name': instance.name,
      'nickname': instance.nickname,
      'last_login': instance.lastLogin,
      'status': instance.status,
      'catchphrase': instance.catchphrase,
      'age': instance.age,
      'gender': instance.gender,
      'places': instance.places,
      'travel_organizations': instance.travelOrganizations,
      'language_skills': instance.languageSkills,
      'phone_number': instance.phoneNumber,
      'contact_email': instance.contactEmail,
      'primary_language': instance.primaryLanguage,
      'secondary_language': instance.secondaryLanguage,
      'publishing': instance.publishing,
      'title': instance.title,
      'profile_theme_color': instance.profileThemeColor,
    };

_$_Catchphrase _$$_CatchphraseFromJson(Map<String, dynamic> json) =>
    _$_Catchphrase(
      ja: json['ja'] as String?,
      en: json['en'] as String?,
    );

Map<String, dynamic> _$$_CatchphraseToJson(_$_Catchphrase instance) =>
    <String, dynamic>{
      'ja': instance.ja,
      'en': instance.en,
    };

_$_LanguageSkill _$$_LanguageSkillFromJson(Map<String, dynamic> json) =>
    _$_LanguageSkill(
      name: json['name'] as String?,
      level: json['level'] as String?,
    );

Map<String, dynamic> _$$_LanguageSkillToJson(_$_LanguageSkill instance) =>
    <String, dynamic>{
      'name': instance.name,
      'level': instance.level,
    };

_$_Place _$$_PlaceFromJson(Map<String, dynamic> json) => _$_Place(
      name: json['name'] == null
          ? null
          : Catchphrase.fromJson(json['name'] as Map<String, dynamic>),
      areaName: json['areaName'] == null
          ? null
          : Catchphrase.fromJson(json['areaName'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PlaceToJson(_$_Place instance) => <String, dynamic>{
      'name': instance.name,
      'areaName': instance.areaName,
    };

_$_AryLanguage _$$_AryLanguageFromJson(Map<String, dynamic> json) =>
    _$_AryLanguage(
      code: json['code'] as String?,
      name: json['name'] as String?,
      nameJa: json['nameJa'] as String?,
    );

Map<String, dynamic> _$$_AryLanguageToJson(_$_AryLanguage instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'nameJa': instance.nameJa,
    };

_$_TravelOrganizations _$$_TravelOrganizationsFromJson(
        Map<String, dynamic> json) =>
    _$_TravelOrganizations(
      ja: (json['ja'] as List<dynamic>?)?.map((e) => e as String).toList(),
      en: (json['en'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_TravelOrganizationsToJson(
        _$_TravelOrganizations instance) =>
    <String, dynamic>{
      'ja': instance.ja,
      'en': instance.en,
    };

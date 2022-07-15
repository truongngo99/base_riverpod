// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeneralInfoData _$$_GeneralInfoDataFromJson(Map<String, dynamic> json) =>
    _$_GeneralInfoData(
      catchphrase:
          Catchphrase.fromJson(json['catchphrase'] as Map<String, dynamic>),
      travelOrganizations: TravelOrganizations.fromJson(
          json['travel_organizations'] as Map<String, dynamic>),
      languageSkills: (json['language_skills'] as List<dynamic>)
          .map((e) => LanguageSkill.fromJson(e as Map<String, dynamic>))
          .toList(),
      generalInfos: (json['general_infos'] as List<dynamic>)
          .map((e) => GeneralInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      selfIntroduction: Catchphrase.fromJson(
          json['self_introduction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeneralInfoDataToJson(_$_GeneralInfoData instance) =>
    <String, dynamic>{
      'catchphrase': instance.catchphrase,
      'travel_organizations': instance.travelOrganizations,
      'language_skills': instance.languageSkills,
      'general_infos': instance.generalInfos,
      'self_introduction': instance.selfIntroduction,
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

_$_GeneralInfo _$$_GeneralInfoFromJson(Map<String, dynamic> json) =>
    _$_GeneralInfo(
      id: json['id'] as int,
      inputType: json['input_type'] as String?,
      value: json['value'] == null
          ? null
          : Catchphrase.fromJson(json['value'] as Map<String, dynamic>),
      mediaUrl: json['media_url'] as String?,
    );

Map<String, dynamic> _$$_GeneralInfoToJson(_$_GeneralInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'input_type': instance.inputType,
      'value': instance.value,
      'media_url': instance.mediaUrl,
    };

_$_LanguageSkill _$$_LanguageSkillFromJson(Map<String, dynamic> json) =>
    _$_LanguageSkill(
      id: json['id'] as int,
      name: json['name'] as String,
      level: json['level'] as String,
    );

Map<String, dynamic> _$$_LanguageSkillToJson(_$_LanguageSkill instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'level': instance.level,
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

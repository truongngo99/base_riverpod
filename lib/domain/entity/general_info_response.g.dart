// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'general_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GeneralInfoResponse _$$_GeneralInfoResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GeneralInfoResponse(
      message: json['message'] as String,
      data: GeneralInfoData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeneralInfoResponseToJson(
        _$_GeneralInfoResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_GeneralInfoData _$$_GeneralInfoDataFromJson(Map<String, dynamic> json) =>
    _$_GeneralInfoData(
      catchphrase:
          Catchphrase.fromJson(json['catchphrase'] as Map<String, dynamic>),
      travelOrganizations: Catchphrase.fromJson(
          json['travelOrganizations'] as Map<String, dynamic>),
      languageSkills: (json['languageSkills'] as List<dynamic>)
          .map((e) => LanguageSkill.fromJson(e as Map<String, dynamic>))
          .toList(),
      generalInfos: (json['generalInfos'] as List<dynamic>)
          .map((e) => GeneralInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      selfIntroduction: Catchphrase.fromJson(
          json['selfIntroduction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GeneralInfoDataToJson(_$_GeneralInfoData instance) =>
    <String, dynamic>{
      'catchphrase': instance.catchphrase,
      'travelOrganizations': instance.travelOrganizations,
      'languageSkills': instance.languageSkills,
      'generalInfos': instance.generalInfos,
      'selfIntroduction': instance.selfIntroduction,
    };

_$_Catchphrase _$$_CatchphraseFromJson(Map<String, dynamic> json) =>
    _$_Catchphrase(
      ja: json['ja'],
      en: json['en'],
    );

Map<String, dynamic> _$$_CatchphraseToJson(_$_Catchphrase instance) =>
    <String, dynamic>{
      'ja': instance.ja,
      'en': instance.en,
    };

_$_GeneralInfo _$$_GeneralInfoFromJson(Map<String, dynamic> json) =>
    _$_GeneralInfo(
      id: json['id'] as int,
      inputType: json['inputType'] as String,
      value: Catchphrase.fromJson(json['value'] as Map<String, dynamic>),
      mediaUrl: json['mediaUrl'] as String,
    );

Map<String, dynamic> _$$_GeneralInfoToJson(_$_GeneralInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'inputType': instance.inputType,
      'value': instance.value,
      'mediaUrl': instance.mediaUrl,
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

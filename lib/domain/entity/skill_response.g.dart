// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SkillResponse _$$_SkillResponseFromJson(Map<String, dynamic> json) =>
    _$_SkillResponse(
      message: json['message'] as String,
      data: SkillData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SkillResponseToJson(_$_SkillResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

_$_Data _$$_DataFromJson(Map<String, dynamic> json) => _$_Data(
      domesticBusinessManager: json['domesticBusinessManager'],
      generalBusinessManager: json['generalBusinessManager'],
      toeic: json['toeic'],
      tourismEnglish: json['tourismEnglish'],
      travelGeography: json['travelGeography'],
      worldHeritage: json['worldHeritage'],
      showLatestTest: json['showLatestTest'],
      ortherDegrees:
          OrtherDegrees.fromJson(json['ortherDegrees'] as Map<String, dynamic>),
      lastSkillsTest: LastSkillsTest.fromJson(
          json['lastSkillsTest'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataToJson(_$_Data instance) => <String, dynamic>{
      'domesticBusinessManager': instance.domesticBusinessManager,
      'generalBusinessManager': instance.generalBusinessManager,
      'toeic': instance.toeic,
      'tourismEnglish': instance.tourismEnglish,
      'travelGeography': instance.travelGeography,
      'worldHeritage': instance.worldHeritage,
      'showLatestTest': instance.showLatestTest,
      'ortherDegrees': instance.ortherDegrees,
      'lastSkillsTest': instance.lastSkillsTest,
    };

_$_LastSkillsTest _$$_LastSkillsTestFromJson(Map<String, dynamic> json) =>
    _$_LastSkillsTest();

Map<String, dynamic> _$$_LastSkillsTestToJson(_$_LastSkillsTest instance) =>
    <String, dynamic>{};

_$_OrtherDegrees _$$_OrtherDegreesFromJson(Map<String, dynamic> json) =>
    _$_OrtherDegrees(
      ja: json['ja'] as List<dynamic>,
      en: json['en'] as List<dynamic>,
    );

Map<String, dynamic> _$$_OrtherDegreesToJson(_$_OrtherDegrees instance) =>
    <String, dynamic>{
      'ja': instance.ja,
      'en': instance.en,
    };

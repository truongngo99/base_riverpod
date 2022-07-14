// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SkillData _$$_SkillDataFromJson(Map<String, dynamic> json) => _$_SkillData(
      domesticBusinessManager: json['domestic_business_manager'] as String,
      generalBusinessManager: json['general_business_manager'] as String,
      toeic: json['toeic'] as String,
      tourismEnglish: json['tourism_english'] as String,
      travelGeography: json['travel_geography'] as String,
      worldHeritage: json['world_heritage'] as String,
      showLatestTest: json['show_latest_test'] as bool,
      ortherDegrees: OrtherDegrees.fromJson(
          json['orther_degrees'] as Map<String, dynamic>),
      lastSkillsTest: LastSkillsTest.fromJson(
          json['last_skills_test'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SkillDataToJson(_$_SkillData instance) =>
    <String, dynamic>{
      'domestic_business_manager': instance.domesticBusinessManager,
      'general_business_manager': instance.generalBusinessManager,
      'toeic': instance.toeic,
      'tourism_english': instance.tourismEnglish,
      'travel_geography': instance.travelGeography,
      'world_heritage': instance.worldHeritage,
      'show_latest_test': instance.showLatestTest,
      'orther_degrees': instance.ortherDegrees,
      'last_skills_test': instance.lastSkillsTest,
    };

_$_LastSkillsTest _$$_LastSkillsTestFromJson(Map<String, dynamic> json) =>
    _$_LastSkillsTest();

Map<String, dynamic> _$$_LastSkillsTestToJson(_$_LastSkillsTest instance) =>
    <String, dynamic>{};

_$_OrtherDegrees _$$_OrtherDegreesFromJson(Map<String, dynamic> json) =>
    _$_OrtherDegrees(
      ja: (json['ja'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      en: (json['en'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$$_OrtherDegreesToJson(_$_OrtherDegrees instance) =>
    <String, dynamic>{
      'ja': instance.ja,
      'en': instance.en,
    };

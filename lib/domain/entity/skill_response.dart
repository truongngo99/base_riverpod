// To parse this JSON data, do
//
//     final skillReponse = skillReponseFromMap(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_response.g.dart';
part 'skill_response.freezed.dart';

@unfreezed
class SkillData with _$SkillData {
    factory SkillData({
        @JsonKey(name: "domestic_business_manager") required String domesticBusinessManager,
        @JsonKey(name: "general_business_manager") required String generalBusinessManager,
        required String toeic,
        @JsonKey(name: "tourism_english") required String tourismEnglish,
        @JsonKey(name: "travel_geography") required String travelGeography,
        @JsonKey(name: "world_heritage") required String worldHeritage,
        @JsonKey(name: "show_latest_test") required bool showLatestTest,
        @JsonKey(name: "orther_degrees") required OrtherDegrees ortherDegrees,
        @JsonKey(name: "last_skills_test") required LastSkillsTest lastSkillsTest,
    }) = _SkillData;

    factory SkillData.fromJson(Map<String, dynamic> json) => _$SkillDataFromJson(json);
}

@freezed
class LastSkillsTest with _$LastSkillsTest {
    const factory LastSkillsTest() = _LastSkillsTest;

    factory LastSkillsTest.fromJson(Map<String, dynamic> json) => _$LastSkillsTestFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
@freezed
class OrtherDegrees with _$OrtherDegrees {
    const factory OrtherDegrees({
        required List<String?>? ja,
        required List<String?>? en,
    }) = _OrtherDegrees;

    factory OrtherDegrees.fromJson(Map<String, dynamic> json) => _$OrtherDegreesFromJson(json);
}

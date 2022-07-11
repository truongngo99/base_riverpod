// To parse this JSON data, do
//
//     final skillReponse = skillReponseFromMap(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'skill_response.g.dart';
part 'skill_response.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class SkillData with _$SkillData {
    const factory SkillData({
        required String domesticBusinessManager,
        required String generalBusinessManager,
        required String toeic,
        required String tourismEnglish,
        required String travelGeography,
        required String worldHeritage,
        required bool showLatestTest,
        required OrtherDegrees ortherDegrees,
        required LastSkillsTest lastSkillsTest,
    }) = _SkillData;

    factory SkillData.fromJson(Map<String, dynamic> json) => _$SkillDataFromJson(json);
}

@freezed
class LastSkillsTest with _$LastSkillsTest {
    const factory LastSkillsTest() = _LastSkillsTest;

    factory LastSkillsTest.fromJson(Map<String, dynamic> json) => _$LastSkillsTestFromJson(json);
}

@freezed
class OrtherDegrees with _$OrtherDegrees {
    const factory OrtherDegrees({
        required List<String?>? ja,
        required List<String?>? en,
    }) = _OrtherDegrees;

    factory OrtherDegrees.fromJson(Map<String, dynamic> json) => _$OrtherDegreesFromJson(json);
}

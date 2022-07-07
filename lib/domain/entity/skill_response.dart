// To parse this JSON data, do
//
//     final skillResponse = skillResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'skill_response.freezed.dart';
part 'skill_response.g.dart';


@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class SkillData with _$SkillData {
    const factory SkillData({
        required dynamic domesticBusinessManager,
        required dynamic generalBusinessManager,
        required dynamic toeic,
        required dynamic tourismEnglish,
        required dynamic travelGeography,
        required dynamic worldHeritage,
        required dynamic showLatestTest,
        required OrtherDegrees ortherDegrees,
        required LastSkillsTest lastSkillsTest,
    }) = _Data;

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
        required List<String?> ja,
        required List<String?> en,
    }) = _OrtherDegrees;

    factory OrtherDegrees.fromJson(Map<String, dynamic> json) => _$OrtherDegreesFromJson(json);
}

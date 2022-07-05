// To parse this JSON data, do
//
//     final skillResponse = skillResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'skill_response.freezed.dart';
part 'skill_response.g.dart';

SkillResponse skillResponseFromJson(String str) => SkillResponse.fromJson(json.decode(str));

String skillResponseToJson(SkillResponse data) => json.encode(data.toJson());

@freezed
class SkillResponse with _$SkillResponse {
    const factory SkillResponse({
        required String message,
        required SkillData data,
    }) = _SkillResponse;

    factory SkillResponse.fromJson(Map<String, dynamic> json) => _$SkillResponseFromJson(json);
}

@freezed
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
        required List<dynamic> ja,
        required List<dynamic> en,
    }) = _OrtherDegrees;

    factory OrtherDegrees.fromJson(Map<String, dynamic> json) => _$OrtherDegreesFromJson(json);
}

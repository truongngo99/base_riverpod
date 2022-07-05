// To parse this JSON data, do
//
//     final generalInfoResponse = generalInfoResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'general_info_response.freezed.dart';
part 'general_info_response.g.dart';

GeneralInfoResponse generalInfoResponseFromJson(String str) => GeneralInfoResponse.fromJson(json.decode(str));

String generalInfoResponseToJson(GeneralInfoResponse data) => json.encode(data.toJson());

@freezed
class GeneralInfoResponse with _$GeneralInfoResponse {
    const factory GeneralInfoResponse({
        required String message,
        required GeneralInfoData data,
    }) = _GeneralInfoResponse;

    factory GeneralInfoResponse.fromJson(Map<String, dynamic> json) => _$GeneralInfoResponseFromJson(json);
}

@freezed
class GeneralInfoData with _$GeneralInfoData {
    const factory GeneralInfoData({
        required Catchphrase catchphrase,
        required Catchphrase travelOrganizations,
        required List<LanguageSkill> languageSkills,
        required List<GeneralInfo> generalInfos,
        required Catchphrase selfIntroduction,
    }) = _GeneralInfoData;

    factory GeneralInfoData.fromJson(Map<String, dynamic> json) => _$GeneralInfoDataFromJson(json);
}

@freezed
class Catchphrase with _$Catchphrase {
    const factory Catchphrase({
        required dynamic ja,
        required dynamic en,
    }) = _Catchphrase;

    factory Catchphrase.fromJson(Map<String, dynamic> json) => _$CatchphraseFromJson(json);
}

@freezed
class GeneralInfo with _$GeneralInfo {
    const factory GeneralInfo({
        required int id,
        required String inputType,
        required Catchphrase value,
        required String mediaUrl,
    }) = _GeneralInfo;

    factory GeneralInfo.fromJson(Map<String, dynamic> json) => _$GeneralInfoFromJson(json);
}

@freezed
class LanguageSkill with _$LanguageSkill {
    const factory LanguageSkill({
        required int id,
        required String name,
        required String level,
    }) = _LanguageSkill;

    factory LanguageSkill.fromJson(Map<String, dynamic> json) => _$LanguageSkillFromJson(json);
}

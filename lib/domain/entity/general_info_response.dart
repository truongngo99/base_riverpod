// To parse this JSON data, do
//
//     final guideUserInfoResponse = guideUserInfoResponseFromMap(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'general_info_response.g.dart';
part 'general_info_response.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class GeneralInfoData with _$GeneralInfoData {
    const factory GeneralInfoData({
        required Catchphrase catchphrase,
        required TravelOrganizations travelOrganizations,
        required List<LanguageSkill> languageSkills,
        required List<GeneralInfo> generalInfos,
        required Catchphrase selfIntroduction,
    }) = _GeneralInfoData;

    factory GeneralInfoData.fromJson(Map<String, dynamic> json) => _$GeneralInfoDataFromJson(json);
}

@freezed
class Catchphrase with _$Catchphrase {
    const factory Catchphrase({
        required String? ja,
        required String? en,
    }) = _Catchphrase;

    factory Catchphrase.fromJson(Map<String, dynamic> json) => _$CatchphraseFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class GeneralInfo with _$GeneralInfo {
    const factory GeneralInfo({
        required int id,
        required String? inputType,
        required Catchphrase? value,
        required String? mediaUrl,
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

@freezed
class TravelOrganizations with _$TravelOrganizations {
    const factory TravelOrganizations({
        required List<String> ja,
        required List<String> en,
    }) = _TravelOrganizations;

    factory TravelOrganizations.fromJson(Map<String, dynamic> json) => _$TravelOrganizationsFromJson(json);
}

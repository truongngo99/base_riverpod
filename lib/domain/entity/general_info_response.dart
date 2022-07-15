// To parse this JSON data, do
//
//     final guideUserInfoResponse = guideUserInfoResponseFromMap(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'general_info_response.g.dart';
part 'general_info_response.freezed.dart';

@unfreezed
class GeneralInfoData with _$GeneralInfoData {
    factory GeneralInfoData({
        required Catchphrase catchphrase,
        @JsonKey(name: "travel_organizations") required TravelOrganizations travelOrganizations,
        @JsonKey(name: "language_skills") required List<LanguageSkill> languageSkills,
        @JsonKey(name: "general_infos") required List<GeneralInfo> generalInfos,
        @JsonKey(name: "self_introduction")required Catchphrase selfIntroduction,
    }) = _GeneralInfoData;

    factory GeneralInfoData.fromJson(Map<String, dynamic> json) => _$GeneralInfoDataFromJson(json);
}

@unfreezed
class Catchphrase with _$Catchphrase {
    factory Catchphrase({
        required String? ja,
        required String? en,
    }) = _Catchphrase;

    factory Catchphrase.fromJson(Map<String, dynamic> json) => _$CatchphraseFromJson(json);
}

@unfreezed
class GeneralInfo with _$GeneralInfo {
    factory GeneralInfo({
        required int id,
        @JsonKey(name: "input_type") required String? inputType,
        required Catchphrase? value,
        @JsonKey(name: "media_url") required String? mediaUrl,
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

@Freezed(makeCollectionsUnmodifiable: false)
class TravelOrganizations with _$TravelOrganizations {
    const factory TravelOrganizations({
        required List<String>? ja,
        required List<String>? en,
    }) = _TravelOrganizations;

    factory TravelOrganizations.fromJson(Map<String, dynamic> json) => _$TravelOrganizationsFromJson(json);
}

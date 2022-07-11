// To parse this JSON data, do
//
//     final guideUserInfoResponse = guideUserInfoResponseFromJson(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'guide_user_info.g.dart';
part 'guide_user_info.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class GuideUserInfoData with _$GuideUserInfoData {
    const factory GuideUserInfoData({
        required int id,
        required String username,
        required String avatarUrl,
        required String coverImageUrl,
        required Catchphrase firstName,
        required Catchphrase lastName,
        required Catchphrase name,
        required Catchphrase nickname,
        required Catchphrase lastLogin,
        required String status,
        required Catchphrase catchphrase,
        required int age,
        required String gender,
        required List<Place> places,
        required TravelOrganizations travelOrganizations,
        required List<LanguageSkill> languageSkills,
        required String phoneNumber,
        required String contactEmail,
        required AryLanguage primaryLanguage,
        required AryLanguage secondaryLanguage,
        required bool publishing,
        required Catchphrase title,
        required String profileThemeColor,
    }) = _GuideUserInfoData;

    factory GuideUserInfoData.fromJson(Map<String, dynamic> json) => _$GuideUserInfoDataFromJson(json);
}

@freezed
class Catchphrase with _$Catchphrase {
    const factory Catchphrase({
        required String? ja,
        required String? en,
    }) = _Catchphrase;

    factory Catchphrase.fromJson(Map<String, dynamic> json) => _$CatchphraseFromJson(json);
}

@freezed
class LanguageSkill with _$LanguageSkill {
    const factory LanguageSkill({
        required String? name,
        required String? level,
    }) = _LanguageSkill;

    factory LanguageSkill.fromJson(Map<String, dynamic> json) => _$LanguageSkillFromJson(json);
}

@freezed
class Place with _$Place {
    const factory Place({
        required Catchphrase? name,
        required Catchphrase? areaName,
    }) = _Place;

    factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}

@freezed
class AryLanguage with _$AryLanguage {
    const factory AryLanguage({
        required String? code,
        required String? name,
        required String? nameJa,
    }) = _AryLanguage;

    factory AryLanguage.fromJson(Map<String, dynamic> json) => _$AryLanguageFromJson(json);
}

@freezed
class TravelOrganizations with _$TravelOrganizations {
    const factory TravelOrganizations({
        required List<String>? ja,
        required List<String>? en,
    }) = _TravelOrganizations;

    factory TravelOrganizations.fromJson(Map<String, dynamic> json) => _$TravelOrganizationsFromJson(json);
}

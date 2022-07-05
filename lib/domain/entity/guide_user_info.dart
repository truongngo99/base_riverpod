// To parse this JSON data, do
//
//     final guideUserInfoResponse = guideUserInfoResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'guide_user_info.g.dart';
part 'guide_user_info.freezed.dart';

GuideUserInfoResponse guideUserInfoResponseFromJson(String str) => GuideUserInfoResponse.fromJson(json.decode(str));

String guideUserInfoResponseToJson(GuideUserInfoResponse data) => json.encode(data.toJson());

@freezed
class GuideUserInfoResponse with _$GuideUserInfoResponse {
    const factory GuideUserInfoResponse({
        required String message,
        required GuideUserInfoData data,
    }) = _GuideUserInfoResponse;

    factory GuideUserInfoResponse.fromJson(Map<String, dynamic> json) => _$GuideUserInfoResponseFromJson(json);
}

@freezed
class GuideUserInfoData with _$GuideUserInfoData {
    const factory GuideUserInfoData({
        required int id,
        required String username,
        required FirstName firstName,
        required FirstName lastName,
        required FirstName name,
        required FirstName nickname,
        required FirstName title,
        required String gender,
        required String phoneNumber,
        required String contactEmail,
        required String profileThemeColor,
        required AryLanguage primaryLanguage,
        required AryLanguage secondaryLanguage,
        required bool publishing,
    }) = _GuideUserInfoData;

    factory GuideUserInfoData.fromJson(Map<String, dynamic> json) => _$GuideUserInfoDataFromJson(json);
}

@freezed
class FirstName with _$FirstName {
    const factory FirstName({
        required String ja,
        required String en,
    }) = _FirstName;

    factory FirstName.fromJson(Map<String, dynamic> json) => _$FirstNameFromJson(json);
}

@freezed
class AryLanguage with _$AryLanguage {
    const factory AryLanguage({
        required String code,
        required String name,
        required String nameJa,
    }) = _AryLanguage;

    factory AryLanguage.fromJson(Map<String, dynamic> json) => _$AryLanguageFromJson(json);
}

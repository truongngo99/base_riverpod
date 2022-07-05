// To parse this JSON UserInfoData, do
//
//     final userInfoResponse = userInfoResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';
part 'user_info.g.dart';
part 'user_info.freezed.dart';

UserInfoResponse userInfoResponseFromJson(String str) => UserInfoResponse.fromJson(json.decode(str));

String userInfoResponseToJson(UserInfoResponse data) => json.encode(data.toJson());

@freezed
class UserInfoResponse with _$UserInfoResponse {
    const factory UserInfoResponse({
        required String message,
        required UserInfoData data,
    }) = _UserInfoResponse;

    factory UserInfoResponse.fromJson(Map<String, dynamic> json) => _$UserInfoResponseFromJson(json);
}

@freezed
class UserInfoData with _$UserInfoData {
    const factory UserInfoData({
        required String email,
        required StName firstName,
        required StName lastName,
        required DateTime birthday,
        required dynamic couponCode,
        required bool subscription,
        required AryLanguage primaryLanguage,
        required AryLanguage secondaryLanguage,
    }) = _UserInfoData;

    factory UserInfoData.fromJson(Map<String, dynamic> json) => _$UserInfoDataFromJson(json);
}

@freezed
class StName with _$StName {
    const factory StName({
        required String ja,
        required String en,
    }) = _StName;

    factory StName.fromJson(Map<String, dynamic> json) => _$StNameFromJson(json);
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

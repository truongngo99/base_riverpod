// To parse this JSON UserInfoData, do
//
//     final userInfoResponse = userInfoResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_info.g.dart';
part 'user_info.freezed.dart';


@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
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
        required String? ja,
        required String? en,
    }) = _StName;

    factory StName.fromJson(Map<String, dynamic> json) => _$StNameFromJson(json);
}


@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class AryLanguage with _$AryLanguage {
    const factory AryLanguage({
        required String? code,
        required String? name,
        required String? nameJa,
    }) = _AryLanguage;

    factory AryLanguage.fromJson(Map<String, dynamic> json) => _$AryLanguageFromJson(json);
}

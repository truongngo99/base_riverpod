// To parse this JSON data, do
//
//     final guideInfoResponse = guideInfoResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'guide_info_response.freezed.dart';
part 'guide_info_response.g.dart';

@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class GuideInfoData with _$GuideInfoData {
    factory GuideInfoData({
        required int id,
        required String username,
        FirstName? firstName,
        FirstName? lastName,
        required FirstName? name,
        required FirstName? nickname,
        required FirstName? title,
        required String gender,
        String? phoneNumber,
        String? contactEmail,
        String? profileThemeColor,
        AryLanguage? primaryLanguage,
        AryLanguage? secondaryLanguage,
        required bool publishing,
    }) = _GuideInfoData;

    factory GuideInfoData.fromJson(Map<String, dynamic> json) => _$GuideInfoDataFromJson(json);
}

@freezed
class FirstName with _$FirstName {
    const factory FirstName({
        required String? ja,
        required String? en,
        required String? vi,
    }) = _FirstName;

    factory FirstName.fromJson(Map<String, dynamic> json) => _$FirstNameFromJson(json);
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

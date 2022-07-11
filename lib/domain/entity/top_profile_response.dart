// To parse this JSON data, do
//
//     final topProfileData = topProfileDataFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_profile_response.g.dart';
part 'top_profile_response.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class TopProfileData with _$TopProfileData {
    const factory TopProfileData({
        required int id,
        required String username,
        required String? avatarUrl,
        required Name firstName,
        required Name lastName,
        required Name name,
        required String? profileThemeColor,
        required AryLanguage primaryLanguage,
        required AryLanguage secondaryLanguage,
    }) = _TopProfileData;

    factory TopProfileData.fromJson(Map<String, dynamic> json) => _$TopProfileDataFromJson(json);
}

@freezed
class Name with _$Name {
    const factory Name({
        required String? ja,
        required String? en,
    }) = _Name;

    factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class AryLanguage with _$AryLanguage {
    const factory AryLanguage({
        required String code,
        required String? name,
        required String? nameJa,
    }) = _AryLanguage;

    factory AryLanguage.fromJson(Map<String, dynamic> json) => _$AryLanguageFromJson(json);
}

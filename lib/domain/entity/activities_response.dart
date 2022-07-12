// To parse this JSON data, do
//
//     final activitiesReponse = activitiesReponseFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'activities_response.freezed.dart';
part 'activities_response.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ActivitiesReponse with _$ActivitiesReponse {
    const factory ActivitiesReponse({
        required String message,
        required Meta meta,
        required List<ActivitiesData> data,
    }) = _ActivitiesReponse;

    factory ActivitiesReponse.fromJson(Map<String, dynamic> json) => _$ActivitiesReponseFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class ActivitiesData with _$ActivitiesData {
    factory ActivitiesData({
        required int id,
        required String title,
        required String description,
        required bool isRecent,
        required bool isPublic,
        required List<Media> media,
        required DateTime departureDate,
    }) = _ActivitiesData;

    factory ActivitiesData.fromJson(Map<String, dynamic> json) => _$ActivitiesDataFromJson(json);
}

@freezed
class Media with _$Media {
    const factory Media({
        required int id,
        required String url,
    }) = _Media;

    factory Media.fromJson(Map<String, dynamic> json) => _$MediaFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class Meta with _$Meta {
    const factory Meta({
        required int limit,
        required int page,
        required int totalPages,
    }) = _Meta;

    factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

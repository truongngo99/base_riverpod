// To parse this JSON data, do
//
//     final mediaReponse = mediaReponseFromMap(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'media_response.freezed.dart';
part 'media_response.g.dart';

@freezed
class MediaReponse with _$MediaReponse {
    const factory MediaReponse({
        required String message,
        required Meta meta,
        required List<MediaData> data,
    }) = _MediaReponse;

    factory MediaReponse.fromJson(Map<String, dynamic> json) => _$MediaReponseFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class MediaData with _$MediaData {
    const factory MediaData({
        required int id,
        required String attachmentUrl,
        required String attachmentType,
        required String timeline,
    }) = _MediaData;

    factory MediaData.fromJson(Map<String, dynamic> json) => _$MediaDataFromJson(json);
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

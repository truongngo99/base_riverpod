// To parse this JSON data, do
//
//     final albumReponse = albumReponseFromMap(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'album_response.g.dart';
part 'album_response.freezed.dart';

@freezed
class AlbumReponse with _$AlbumReponse {
    const factory AlbumReponse({
        required String message,
        required Meta meta,
        required List<AlbumData> data,
    }) = _AlbumReponse;

    factory AlbumReponse.fromJson(Map<String, dynamic> json) => _$AlbumReponseFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class AlbumData with _$AlbumData {
    const factory AlbumData({
        required int id,
        required String name,
        required int mediumId,
        required String mediumAttachmentUrl,
        required String mediumAttachmentType,
        required DateTime timeline,
    }) = _AlbumData;

    factory AlbumData.fromJson(Map<String, dynamic> json) => _$AlbumDataFromJson(json);
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

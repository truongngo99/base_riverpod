// To parse this JSON data, do
//
//     final TravelSpotResponse = TravelSpotResponseFromMap(jsonString);

import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'map_pin_response.g.dart';
part 'map_pin_response.freezed.dart';

@freezed
class TravelSpotResponse with _$TravelSpotResponse {
    const factory TravelSpotResponse({
        required String message,
        required Meta meta,
        required List<TravelSpotData> data,
    }) = _TravelSpotResponse;

    factory TravelSpotResponse.fromJson(Map<String, dynamic> json) => _$TravelSpotResponseFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false, toJson: false, fromJson: false)
@JsonSerializable(fieldRename: FieldRename.snake)
class TravelSpotData with _$TravelSpotData {
    const factory TravelSpotData({
        required int id,
        required Description name,
        required Description description,
        required Area area,
        required String? imageUrl,
    }) = _TravelSpotData;

    factory TravelSpotData.fromJson(Map<String, dynamic> json) => _$TravelSpotDataFromJson(json);
}

@freezed
class Area with _$Area {
    const factory Area({
        required int id,
        required Description name,
    }) = _Area;

    factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}

@freezed
class Description with _$Description {
    const factory Description({
        required String? ja,
        required String? en,
    }) = _Description;

    factory Description.fromJson(Map<String, dynamic> json) => _$DescriptionFromJson(json);
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

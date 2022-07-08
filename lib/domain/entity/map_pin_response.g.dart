// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_pin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelSpotData _$TravelSpotDataFromJson(Map<String, dynamic> json) =>
    TravelSpotData(
      id: json['id'] as int,
      name: Description.fromJson(json['name'] as Map<String, dynamic>),
      description:
          Description.fromJson(json['description'] as Map<String, dynamic>),
      area: Area.fromJson(json['area'] as Map<String, dynamic>),
      imageUrl: json['image_url'] as String?,
    );

Map<String, dynamic> _$TravelSpotDataToJson(TravelSpotData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'area': instance.area,
      'image_url': instance.imageUrl,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      limit: json['limit'] as int,
      page: json['page'] as int,
      totalPages: json['total_pages'] as int,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'limit': instance.limit,
      'page': instance.page,
      'total_pages': instance.totalPages,
    };

_$_TravelSpotResponse _$$_TravelSpotResponseFromJson(
        Map<String, dynamic> json) =>
    _$_TravelSpotResponse(
      message: json['message'] as String,
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => TravelSpotData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TravelSpotResponseToJson(
        _$_TravelSpotResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };

_$_Area _$$_AreaFromJson(Map<String, dynamic> json) => _$_Area(
      id: json['id'] as int,
      name: Description.fromJson(json['name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AreaToJson(_$_Area instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$_Description _$$_DescriptionFromJson(Map<String, dynamic> json) =>
    _$_Description(
      ja: json['ja'] as String?,
      en: json['en'] as String?,
    );

Map<String, dynamic> _$$_DescriptionToJson(_$_Description instance) =>
    <String, dynamic>{
      'ja': instance.ja,
      'en': instance.en,
    };

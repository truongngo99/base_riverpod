// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activities_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ActivitiesData _$ActivitiesDataFromJson(Map<String, dynamic> json) =>
    ActivitiesData(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      isRecent: json['is_recent'] as bool,
      isPublic: json['is_public'] as bool,
      media: (json['media'] as List<dynamic>)
          .map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      departureDate: DateTime.parse(json['departure_date'] as String),
    );

Map<String, dynamic> _$ActivitiesDataToJson(ActivitiesData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'is_recent': instance.isRecent,
      'is_public': instance.isPublic,
      'media': instance.media,
      'departure_date': instance.departureDate.toIso8601String(),
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

_$_ActivitiesReponse _$$_ActivitiesReponseFromJson(Map<String, dynamic> json) =>
    _$_ActivitiesReponse(
      message: json['message'] as String,
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => ActivitiesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ActivitiesReponseToJson(
        _$_ActivitiesReponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };

_$_Media _$$_MediaFromJson(Map<String, dynamic> json) => _$_Media(
      id: json['id'] as int,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_MediaToJson(_$_Media instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };

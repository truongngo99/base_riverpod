// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumData _$AlbumDataFromJson(Map<String, dynamic> json) => AlbumData(
      id: json['id'] as int,
      name: json['name'] as String,
      mediumId: json['medium_id'] as int,
      mediumAttachmentUrl: json['medium_attachment_url'] as String,
      mediumAttachmentType: json['medium_attachment_type'] as String,
      timeline: json['timeline'] == null
          ? null
          : DateTime.parse(json['timeline'] as String),
    );

Map<String, dynamic> _$AlbumDataToJson(AlbumData instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'medium_id': instance.mediumId,
      'medium_attachment_url': instance.mediumAttachmentUrl,
      'medium_attachment_type': instance.mediumAttachmentType,
      'timeline': instance.timeline?.toIso8601String(),
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

_$_AlbumReponse _$$_AlbumReponseFromJson(Map<String, dynamic> json) =>
    _$_AlbumReponse(
      message: json['message'] as String,
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => AlbumData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AlbumReponseToJson(_$_AlbumReponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };

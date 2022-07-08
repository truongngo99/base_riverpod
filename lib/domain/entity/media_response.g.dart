// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaData _$MediaDataFromJson(Map<String, dynamic> json) => MediaData(
      id: json['id'] as int,
      attachmentUrl: json['attachment_url'] as String,
      attachmentType: json['attachment_type'] as String,
      timeline: json['timeline'] as String,
    );

Map<String, dynamic> _$MediaDataToJson(MediaData instance) => <String, dynamic>{
      'id': instance.id,
      'attachment_url': instance.attachmentUrl,
      'attachment_type': instance.attachmentType,
      'timeline': instance.timeline,
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

_$_MediaReponse _$$_MediaReponseFromJson(Map<String, dynamic> json) =>
    _$_MediaReponse(
      message: json['message'] as String,
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>)
          .map((e) => MediaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MediaReponseToJson(_$_MediaReponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };

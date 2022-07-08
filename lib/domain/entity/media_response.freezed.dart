// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'media_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MediaReponse _$MediaReponseFromJson(Map<String, dynamic> json) {
  return _MediaReponse.fromJson(json);
}

/// @nodoc
mixin _$MediaReponse {
  String get message => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;
  List<MediaData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaReponseCopyWith<MediaReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaReponseCopyWith<$Res> {
  factory $MediaReponseCopyWith(
          MediaReponse value, $Res Function(MediaReponse) then) =
      _$MediaReponseCopyWithImpl<$Res>;
  $Res call({String message, Meta meta, List<MediaData> data});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$MediaReponseCopyWithImpl<$Res> implements $MediaReponseCopyWith<$Res> {
  _$MediaReponseCopyWithImpl(this._value, this._then);

  final MediaReponse _value;
  // ignore: unused_field
  final $Res Function(MediaReponse) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MediaData>,
    ));
  }

  @override
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value));
    });
  }
}

/// @nodoc
abstract class _$$_MediaReponseCopyWith<$Res>
    implements $MediaReponseCopyWith<$Res> {
  factory _$$_MediaReponseCopyWith(
          _$_MediaReponse value, $Res Function(_$_MediaReponse) then) =
      __$$_MediaReponseCopyWithImpl<$Res>;
  @override
  $Res call({String message, Meta meta, List<MediaData> data});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_MediaReponseCopyWithImpl<$Res>
    extends _$MediaReponseCopyWithImpl<$Res>
    implements _$$_MediaReponseCopyWith<$Res> {
  __$$_MediaReponseCopyWithImpl(
      _$_MediaReponse _value, $Res Function(_$_MediaReponse) _then)
      : super(_value, (v) => _then(v as _$_MediaReponse));

  @override
  _$_MediaReponse get _value => super._value as _$_MediaReponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_MediaReponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      data: data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MediaData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MediaReponse implements _MediaReponse {
  const _$_MediaReponse(
      {required this.message,
      required this.meta,
      required final List<MediaData> data})
      : _data = data;

  factory _$_MediaReponse.fromJson(Map<String, dynamic> json) =>
      _$$_MediaReponseFromJson(json);

  @override
  final String message;
  @override
  final Meta meta;
  final List<MediaData> _data;
  @override
  List<MediaData> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'MediaReponse(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaReponse &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_MediaReponseCopyWith<_$_MediaReponse> get copyWith =>
      __$$_MediaReponseCopyWithImpl<_$_MediaReponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaReponseToJson(this);
  }
}

abstract class _MediaReponse implements MediaReponse {
  const factory _MediaReponse(
      {required final String message,
      required final Meta meta,
      required final List<MediaData> data}) = _$_MediaReponse;

  factory _MediaReponse.fromJson(Map<String, dynamic> json) =
      _$_MediaReponse.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  Meta get meta => throw _privateConstructorUsedError;
  @override
  List<MediaData> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MediaReponseCopyWith<_$_MediaReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MediaData {
  int get id => throw _privateConstructorUsedError;
  String get attachmentUrl => throw _privateConstructorUsedError;
  String get attachmentType => throw _privateConstructorUsedError;
  String get timeline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MediaDataCopyWith<MediaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaDataCopyWith<$Res> {
  factory $MediaDataCopyWith(MediaData value, $Res Function(MediaData) then) =
      _$MediaDataCopyWithImpl<$Res>;
  $Res call(
      {int id, String attachmentUrl, String attachmentType, String timeline});
}

/// @nodoc
class _$MediaDataCopyWithImpl<$Res> implements $MediaDataCopyWith<$Res> {
  _$MediaDataCopyWithImpl(this._value, this._then);

  final MediaData _value;
  // ignore: unused_field
  final $Res Function(MediaData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? attachmentUrl = freezed,
    Object? attachmentType = freezed,
    Object? timeline = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attachmentUrl: attachmentUrl == freezed
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      attachmentType: attachmentType == freezed
          ? _value.attachmentType
          : attachmentType // ignore: cast_nullable_to_non_nullable
              as String,
      timeline: timeline == freezed
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MediaDataCopyWith<$Res> implements $MediaDataCopyWith<$Res> {
  factory _$$_MediaDataCopyWith(
          _$_MediaData value, $Res Function(_$_MediaData) then) =
      __$$_MediaDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, String attachmentUrl, String attachmentType, String timeline});
}

/// @nodoc
class __$$_MediaDataCopyWithImpl<$Res> extends _$MediaDataCopyWithImpl<$Res>
    implements _$$_MediaDataCopyWith<$Res> {
  __$$_MediaDataCopyWithImpl(
      _$_MediaData _value, $Res Function(_$_MediaData) _then)
      : super(_value, (v) => _then(v as _$_MediaData));

  @override
  _$_MediaData get _value => super._value as _$_MediaData;

  @override
  $Res call({
    Object? id = freezed,
    Object? attachmentUrl = freezed,
    Object? attachmentType = freezed,
    Object? timeline = freezed,
  }) {
    return _then(_$_MediaData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      attachmentUrl: attachmentUrl == freezed
          ? _value.attachmentUrl
          : attachmentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      attachmentType: attachmentType == freezed
          ? _value.attachmentType
          : attachmentType // ignore: cast_nullable_to_non_nullable
              as String,
      timeline: timeline == freezed
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MediaData implements _MediaData {
  const _$_MediaData(
      {required this.id,
      required this.attachmentUrl,
      required this.attachmentType,
      required this.timeline});

  @override
  final int id;
  @override
  final String attachmentUrl;
  @override
  final String attachmentType;
  @override
  final String timeline;

  @override
  String toString() {
    return 'MediaData(id: $id, attachmentUrl: $attachmentUrl, attachmentType: $attachmentType, timeline: $timeline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MediaData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.attachmentUrl, attachmentUrl) &&
            const DeepCollectionEquality()
                .equals(other.attachmentType, attachmentType) &&
            const DeepCollectionEquality().equals(other.timeline, timeline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(attachmentUrl),
      const DeepCollectionEquality().hash(attachmentType),
      const DeepCollectionEquality().hash(timeline));

  @JsonKey(ignore: true)
  @override
  _$$_MediaDataCopyWith<_$_MediaData> get copyWith =>
      __$$_MediaDataCopyWithImpl<_$_MediaData>(this, _$identity);
}

abstract class _MediaData implements MediaData {
  const factory _MediaData(
      {required final int id,
      required final String attachmentUrl,
      required final String attachmentType,
      required final String timeline}) = _$_MediaData;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get attachmentUrl => throw _privateConstructorUsedError;
  @override
  String get attachmentType => throw _privateConstructorUsedError;
  @override
  String get timeline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MediaDataCopyWith<_$_MediaData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Meta {
  int get limit => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res>;
  $Res call({int limit, int page, int totalPages});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res> implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  final Meta _value;
  // ignore: unused_field
  final $Res Function(Meta) _then;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_value.copyWith(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$_MetaCopyWith(_$_Meta value, $Res Function(_$_Meta) then) =
      __$$_MetaCopyWithImpl<$Res>;
  @override
  $Res call({int limit, int page, int totalPages});
}

/// @nodoc
class __$$_MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res>
    implements _$$_MetaCopyWith<$Res> {
  __$$_MetaCopyWithImpl(_$_Meta _value, $Res Function(_$_Meta) _then)
      : super(_value, (v) => _then(v as _$_Meta));

  @override
  _$_Meta get _value => super._value as _$_Meta;

  @override
  $Res call({
    Object? limit = freezed,
    Object? page = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(_$_Meta(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: totalPages == freezed
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Meta implements _Meta {
  const _$_Meta(
      {required this.limit, required this.page, required this.totalPages});

  @override
  final int limit;
  @override
  final int page;
  @override
  final int totalPages;

  @override
  String toString() {
    return 'Meta(limit: $limit, page: $page, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meta &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality()
                .equals(other.totalPages, totalPages));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(limit),
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(totalPages));

  @JsonKey(ignore: true)
  @override
  _$$_MetaCopyWith<_$_Meta> get copyWith =>
      __$$_MetaCopyWithImpl<_$_Meta>(this, _$identity);
}

abstract class _Meta implements Meta {
  const factory _Meta(
      {required final int limit,
      required final int page,
      required final int totalPages}) = _$_Meta;

  @override
  int get limit => throw _privateConstructorUsedError;
  @override
  int get page => throw _privateConstructorUsedError;
  @override
  int get totalPages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MetaCopyWith<_$_Meta> get copyWith => throw _privateConstructorUsedError;
}

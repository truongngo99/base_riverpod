// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AlbumReponse _$AlbumReponseFromJson(Map<String, dynamic> json) {
  return _AlbumReponse.fromJson(json);
}

/// @nodoc
mixin _$AlbumReponse {
  String get message => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;
  List<AlbumData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumReponseCopyWith<AlbumReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumReponseCopyWith<$Res> {
  factory $AlbumReponseCopyWith(
          AlbumReponse value, $Res Function(AlbumReponse) then) =
      _$AlbumReponseCopyWithImpl<$Res>;
  $Res call({String message, Meta meta, List<AlbumData> data});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$AlbumReponseCopyWithImpl<$Res> implements $AlbumReponseCopyWith<$Res> {
  _$AlbumReponseCopyWithImpl(this._value, this._then);

  final AlbumReponse _value;
  // ignore: unused_field
  final $Res Function(AlbumReponse) _then;

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
              as List<AlbumData>,
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
abstract class _$$_AlbumReponseCopyWith<$Res>
    implements $AlbumReponseCopyWith<$Res> {
  factory _$$_AlbumReponseCopyWith(
          _$_AlbumReponse value, $Res Function(_$_AlbumReponse) then) =
      __$$_AlbumReponseCopyWithImpl<$Res>;
  @override
  $Res call({String message, Meta meta, List<AlbumData> data});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_AlbumReponseCopyWithImpl<$Res>
    extends _$AlbumReponseCopyWithImpl<$Res>
    implements _$$_AlbumReponseCopyWith<$Res> {
  __$$_AlbumReponseCopyWithImpl(
      _$_AlbumReponse _value, $Res Function(_$_AlbumReponse) _then)
      : super(_value, (v) => _then(v as _$_AlbumReponse));

  @override
  _$_AlbumReponse get _value => super._value as _$_AlbumReponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_AlbumReponse(
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
              as List<AlbumData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AlbumReponse implements _AlbumReponse {
  const _$_AlbumReponse(
      {required this.message,
      required this.meta,
      required final List<AlbumData> data})
      : _data = data;

  factory _$_AlbumReponse.fromJson(Map<String, dynamic> json) =>
      _$$_AlbumReponseFromJson(json);

  @override
  final String message;
  @override
  final Meta meta;
  final List<AlbumData> _data;
  @override
  List<AlbumData> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'AlbumReponse(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumReponse &&
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
  _$$_AlbumReponseCopyWith<_$_AlbumReponse> get copyWith =>
      __$$_AlbumReponseCopyWithImpl<_$_AlbumReponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AlbumReponseToJson(this);
  }
}

abstract class _AlbumReponse implements AlbumReponse {
  const factory _AlbumReponse(
      {required final String message,
      required final Meta meta,
      required final List<AlbumData> data}) = _$_AlbumReponse;

  factory _AlbumReponse.fromJson(Map<String, dynamic> json) =
      _$_AlbumReponse.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  Meta get meta => throw _privateConstructorUsedError;
  @override
  List<AlbumData> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumReponseCopyWith<_$_AlbumReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AlbumData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get mediumId => throw _privateConstructorUsedError;
  String get mediumAttachmentUrl => throw _privateConstructorUsedError;
  String get mediumAttachmentType => throw _privateConstructorUsedError;
  DateTime get timeline => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumDataCopyWith<AlbumData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumDataCopyWith<$Res> {
  factory $AlbumDataCopyWith(AlbumData value, $Res Function(AlbumData) then) =
      _$AlbumDataCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      int mediumId,
      String mediumAttachmentUrl,
      String mediumAttachmentType,
      DateTime timeline});
}

/// @nodoc
class _$AlbumDataCopyWithImpl<$Res> implements $AlbumDataCopyWith<$Res> {
  _$AlbumDataCopyWithImpl(this._value, this._then);

  final AlbumData _value;
  // ignore: unused_field
  final $Res Function(AlbumData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? mediumId = freezed,
    Object? mediumAttachmentUrl = freezed,
    Object? mediumAttachmentType = freezed,
    Object? timeline = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mediumId: mediumId == freezed
          ? _value.mediumId
          : mediumId // ignore: cast_nullable_to_non_nullable
              as int,
      mediumAttachmentUrl: mediumAttachmentUrl == freezed
          ? _value.mediumAttachmentUrl
          : mediumAttachmentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediumAttachmentType: mediumAttachmentType == freezed
          ? _value.mediumAttachmentType
          : mediumAttachmentType // ignore: cast_nullable_to_non_nullable
              as String,
      timeline: timeline == freezed
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_AlbumDataCopyWith<$Res> implements $AlbumDataCopyWith<$Res> {
  factory _$$_AlbumDataCopyWith(
          _$_AlbumData value, $Res Function(_$_AlbumData) then) =
      __$$_AlbumDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      int mediumId,
      String mediumAttachmentUrl,
      String mediumAttachmentType,
      DateTime timeline});
}

/// @nodoc
class __$$_AlbumDataCopyWithImpl<$Res> extends _$AlbumDataCopyWithImpl<$Res>
    implements _$$_AlbumDataCopyWith<$Res> {
  __$$_AlbumDataCopyWithImpl(
      _$_AlbumData _value, $Res Function(_$_AlbumData) _then)
      : super(_value, (v) => _then(v as _$_AlbumData));

  @override
  _$_AlbumData get _value => super._value as _$_AlbumData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? mediumId = freezed,
    Object? mediumAttachmentUrl = freezed,
    Object? mediumAttachmentType = freezed,
    Object? timeline = freezed,
  }) {
    return _then(_$_AlbumData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      mediumId: mediumId == freezed
          ? _value.mediumId
          : mediumId // ignore: cast_nullable_to_non_nullable
              as int,
      mediumAttachmentUrl: mediumAttachmentUrl == freezed
          ? _value.mediumAttachmentUrl
          : mediumAttachmentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      mediumAttachmentType: mediumAttachmentType == freezed
          ? _value.mediumAttachmentType
          : mediumAttachmentType // ignore: cast_nullable_to_non_nullable
              as String,
      timeline: timeline == freezed
          ? _value.timeline
          : timeline // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_AlbumData implements _AlbumData {
  const _$_AlbumData(
      {required this.id,
      required this.name,
      required this.mediumId,
      required this.mediumAttachmentUrl,
      required this.mediumAttachmentType,
      required this.timeline});

  @override
  final int id;
  @override
  final String name;
  @override
  final int mediumId;
  @override
  final String mediumAttachmentUrl;
  @override
  final String mediumAttachmentType;
  @override
  final DateTime timeline;

  @override
  String toString() {
    return 'AlbumData(id: $id, name: $name, mediumId: $mediumId, mediumAttachmentUrl: $mediumAttachmentUrl, mediumAttachmentType: $mediumAttachmentType, timeline: $timeline)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.mediumId, mediumId) &&
            const DeepCollectionEquality()
                .equals(other.mediumAttachmentUrl, mediumAttachmentUrl) &&
            const DeepCollectionEquality()
                .equals(other.mediumAttachmentType, mediumAttachmentType) &&
            const DeepCollectionEquality().equals(other.timeline, timeline));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(mediumId),
      const DeepCollectionEquality().hash(mediumAttachmentUrl),
      const DeepCollectionEquality().hash(mediumAttachmentType),
      const DeepCollectionEquality().hash(timeline));

  @JsonKey(ignore: true)
  @override
  _$$_AlbumDataCopyWith<_$_AlbumData> get copyWith =>
      __$$_AlbumDataCopyWithImpl<_$_AlbumData>(this, _$identity);
}

abstract class _AlbumData implements AlbumData {
  const factory _AlbumData(
      {required final int id,
      required final String name,
      required final int mediumId,
      required final String mediumAttachmentUrl,
      required final String mediumAttachmentType,
      required final DateTime timeline}) = _$_AlbumData;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get mediumId => throw _privateConstructorUsedError;
  @override
  String get mediumAttachmentUrl => throw _privateConstructorUsedError;
  @override
  String get mediumAttachmentType => throw _privateConstructorUsedError;
  @override
  DateTime get timeline => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AlbumDataCopyWith<_$_AlbumData> get copyWith =>
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

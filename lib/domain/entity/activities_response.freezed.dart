// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activities_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActivitiesReponse _$ActivitiesReponseFromJson(Map<String, dynamic> json) {
  return _ActivitiesReponse.fromJson(json);
}

/// @nodoc
mixin _$ActivitiesReponse {
  String get message => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;
  List<ActivitiesData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivitiesReponseCopyWith<ActivitiesReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitiesReponseCopyWith<$Res> {
  factory $ActivitiesReponseCopyWith(
          ActivitiesReponse value, $Res Function(ActivitiesReponse) then) =
      _$ActivitiesReponseCopyWithImpl<$Res>;
  $Res call({String message, Meta meta, List<ActivitiesData> data});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ActivitiesReponseCopyWithImpl<$Res>
    implements $ActivitiesReponseCopyWith<$Res> {
  _$ActivitiesReponseCopyWithImpl(this._value, this._then);

  final ActivitiesReponse _value;
  // ignore: unused_field
  final $Res Function(ActivitiesReponse) _then;

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
              as List<ActivitiesData>,
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
abstract class _$$_ActivitiesReponseCopyWith<$Res>
    implements $ActivitiesReponseCopyWith<$Res> {
  factory _$$_ActivitiesReponseCopyWith(_$_ActivitiesReponse value,
          $Res Function(_$_ActivitiesReponse) then) =
      __$$_ActivitiesReponseCopyWithImpl<$Res>;
  @override
  $Res call({String message, Meta meta, List<ActivitiesData> data});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_ActivitiesReponseCopyWithImpl<$Res>
    extends _$ActivitiesReponseCopyWithImpl<$Res>
    implements _$$_ActivitiesReponseCopyWith<$Res> {
  __$$_ActivitiesReponseCopyWithImpl(
      _$_ActivitiesReponse _value, $Res Function(_$_ActivitiesReponse) _then)
      : super(_value, (v) => _then(v as _$_ActivitiesReponse));

  @override
  _$_ActivitiesReponse get _value => super._value as _$_ActivitiesReponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ActivitiesReponse(
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
              as List<ActivitiesData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActivitiesReponse implements _ActivitiesReponse {
  const _$_ActivitiesReponse(
      {required this.message, required this.meta, required this.data});

  factory _$_ActivitiesReponse.fromJson(Map<String, dynamic> json) =>
      _$$_ActivitiesReponseFromJson(json);

  @override
  final String message;
  @override
  final Meta meta;
  @override
  final List<ActivitiesData> data;

  @override
  String toString() {
    return 'ActivitiesReponse(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivitiesReponse &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_ActivitiesReponseCopyWith<_$_ActivitiesReponse> get copyWith =>
      __$$_ActivitiesReponseCopyWithImpl<_$_ActivitiesReponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActivitiesReponseToJson(this);
  }
}

abstract class _ActivitiesReponse implements ActivitiesReponse {
  const factory _ActivitiesReponse(
      {required final String message,
      required final Meta meta,
      required final List<ActivitiesData> data}) = _$_ActivitiesReponse;

  factory _ActivitiesReponse.fromJson(Map<String, dynamic> json) =
      _$_ActivitiesReponse.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  Meta get meta => throw _privateConstructorUsedError;
  @override
  List<ActivitiesData> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ActivitiesReponseCopyWith<_$_ActivitiesReponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ActivitiesData {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isRecent => throw _privateConstructorUsedError;
  bool get isPublic => throw _privateConstructorUsedError;
  List<Media> get media => throw _privateConstructorUsedError;
  DateTime get departureDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivitiesDataCopyWith<ActivitiesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivitiesDataCopyWith<$Res> {
  factory $ActivitiesDataCopyWith(
          ActivitiesData value, $Res Function(ActivitiesData) then) =
      _$ActivitiesDataCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String description,
      bool isRecent,
      bool isPublic,
      List<Media> media,
      DateTime departureDate});
}

/// @nodoc
class _$ActivitiesDataCopyWithImpl<$Res>
    implements $ActivitiesDataCopyWith<$Res> {
  _$ActivitiesDataCopyWithImpl(this._value, this._then);

  final ActivitiesData _value;
  // ignore: unused_field
  final $Res Function(ActivitiesData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isRecent = freezed,
    Object? isPublic = freezed,
    Object? media = freezed,
    Object? departureDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isRecent: isRecent == freezed
          ? _value.isRecent
          : isRecent // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      departureDate: departureDate == freezed
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ActivitiesDataCopyWith<$Res>
    implements $ActivitiesDataCopyWith<$Res> {
  factory _$$_ActivitiesDataCopyWith(
          _$_ActivitiesData value, $Res Function(_$_ActivitiesData) then) =
      __$$_ActivitiesDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String description,
      bool isRecent,
      bool isPublic,
      List<Media> media,
      DateTime departureDate});
}

/// @nodoc
class __$$_ActivitiesDataCopyWithImpl<$Res>
    extends _$ActivitiesDataCopyWithImpl<$Res>
    implements _$$_ActivitiesDataCopyWith<$Res> {
  __$$_ActivitiesDataCopyWithImpl(
      _$_ActivitiesData _value, $Res Function(_$_ActivitiesData) _then)
      : super(_value, (v) => _then(v as _$_ActivitiesData));

  @override
  _$_ActivitiesData get _value => super._value as _$_ActivitiesData;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? isRecent = freezed,
    Object? isPublic = freezed,
    Object? media = freezed,
    Object? departureDate = freezed,
  }) {
    return _then(_$_ActivitiesData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isRecent: isRecent == freezed
          ? _value.isRecent
          : isRecent // ignore: cast_nullable_to_non_nullable
              as bool,
      isPublic: isPublic == freezed
          ? _value.isPublic
          : isPublic // ignore: cast_nullable_to_non_nullable
              as bool,
      media: media == freezed
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<Media>,
      departureDate: departureDate == freezed
          ? _value.departureDate
          : departureDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_ActivitiesData implements _ActivitiesData {
  _$_ActivitiesData(
      {required this.id,
      required this.title,
      required this.description,
      required this.isRecent,
      required this.isPublic,
      required this.media,
      required this.departureDate});

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final bool isRecent;
  @override
  final bool isPublic;
  @override
  final List<Media> media;
  @override
  final DateTime departureDate;

  @override
  String toString() {
    return 'ActivitiesData(id: $id, title: $title, description: $description, isRecent: $isRecent, isPublic: $isPublic, media: $media, departureDate: $departureDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActivitiesData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.isRecent, isRecent) &&
            const DeepCollectionEquality().equals(other.isPublic, isPublic) &&
            const DeepCollectionEquality().equals(other.media, media) &&
            const DeepCollectionEquality()
                .equals(other.departureDate, departureDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(isRecent),
      const DeepCollectionEquality().hash(isPublic),
      const DeepCollectionEquality().hash(media),
      const DeepCollectionEquality().hash(departureDate));

  @JsonKey(ignore: true)
  @override
  _$$_ActivitiesDataCopyWith<_$_ActivitiesData> get copyWith =>
      __$$_ActivitiesDataCopyWithImpl<_$_ActivitiesData>(this, _$identity);
}

abstract class _ActivitiesData implements ActivitiesData {
  factory _ActivitiesData(
      {required final int id,
      required final String title,
      required final String description,
      required final bool isRecent,
      required final bool isPublic,
      required final List<Media> media,
      required final DateTime departureDate}) = _$_ActivitiesData;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  bool get isRecent => throw _privateConstructorUsedError;
  @override
  bool get isPublic => throw _privateConstructorUsedError;
  @override
  List<Media> get media => throw _privateConstructorUsedError;
  @override
  DateTime get departureDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ActivitiesDataCopyWith<_$_ActivitiesData> get copyWith =>
      throw _privateConstructorUsedError;
}

Media _$MediaFromJson(Map<String, dynamic> json) {
  return _Media.fromJson(json);
}

/// @nodoc
mixin _$Media {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaCopyWith<Media> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaCopyWith<$Res> {
  factory $MediaCopyWith(Media value, $Res Function(Media) then) =
      _$MediaCopyWithImpl<$Res>;
  $Res call({int id, String url});
}

/// @nodoc
class _$MediaCopyWithImpl<$Res> implements $MediaCopyWith<$Res> {
  _$MediaCopyWithImpl(this._value, this._then);

  final Media _value;
  // ignore: unused_field
  final $Res Function(Media) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_MediaCopyWith<$Res> implements $MediaCopyWith<$Res> {
  factory _$$_MediaCopyWith(_$_Media value, $Res Function(_$_Media) then) =
      __$$_MediaCopyWithImpl<$Res>;
  @override
  $Res call({int id, String url});
}

/// @nodoc
class __$$_MediaCopyWithImpl<$Res> extends _$MediaCopyWithImpl<$Res>
    implements _$$_MediaCopyWith<$Res> {
  __$$_MediaCopyWithImpl(_$_Media _value, $Res Function(_$_Media) _then)
      : super(_value, (v) => _then(v as _$_Media));

  @override
  _$_Media get _value => super._value as _$_Media;

  @override
  $Res call({
    Object? id = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_Media(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Media implements _Media {
  const _$_Media({required this.id, required this.url});

  factory _$_Media.fromJson(Map<String, dynamic> json) =>
      _$$_MediaFromJson(json);

  @override
  final int id;
  @override
  final String url;

  @override
  String toString() {
    return 'Media(id: $id, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Media &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_MediaCopyWith<_$_Media> get copyWith =>
      __$$_MediaCopyWithImpl<_$_Media>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediaToJson(this);
  }
}

abstract class _Media implements Media {
  const factory _Media({required final int id, required final String url}) =
      _$_Media;

  factory _Media.fromJson(Map<String, dynamic> json) = _$_Media.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MediaCopyWith<_$_Media> get copyWith =>
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

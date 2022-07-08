// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_pin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TravelSpotResponse _$TravelSpotResponseFromJson(Map<String, dynamic> json) {
  return _TravelSpotResponse.fromJson(json);
}

/// @nodoc
mixin _$TravelSpotResponse {
  String get message => throw _privateConstructorUsedError;
  Meta get meta => throw _privateConstructorUsedError;
  List<TravelSpotData> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TravelSpotResponseCopyWith<TravelSpotResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelSpotResponseCopyWith<$Res> {
  factory $TravelSpotResponseCopyWith(
          TravelSpotResponse value, $Res Function(TravelSpotResponse) then) =
      _$TravelSpotResponseCopyWithImpl<$Res>;
  $Res call({String message, Meta meta, List<TravelSpotData> data});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$TravelSpotResponseCopyWithImpl<$Res>
    implements $TravelSpotResponseCopyWith<$Res> {
  _$TravelSpotResponseCopyWithImpl(this._value, this._then);

  final TravelSpotResponse _value;
  // ignore: unused_field
  final $Res Function(TravelSpotResponse) _then;

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
              as List<TravelSpotData>,
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
abstract class _$$_TravelSpotResponseCopyWith<$Res>
    implements $TravelSpotResponseCopyWith<$Res> {
  factory _$$_TravelSpotResponseCopyWith(_$_TravelSpotResponse value,
          $Res Function(_$_TravelSpotResponse) then) =
      __$$_TravelSpotResponseCopyWithImpl<$Res>;
  @override
  $Res call({String message, Meta meta, List<TravelSpotData> data});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_TravelSpotResponseCopyWithImpl<$Res>
    extends _$TravelSpotResponseCopyWithImpl<$Res>
    implements _$$_TravelSpotResponseCopyWith<$Res> {
  __$$_TravelSpotResponseCopyWithImpl(
      _$_TravelSpotResponse _value, $Res Function(_$_TravelSpotResponse) _then)
      : super(_value, (v) => _then(v as _$_TravelSpotResponse));

  @override
  _$_TravelSpotResponse get _value => super._value as _$_TravelSpotResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_TravelSpotResponse(
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
              as List<TravelSpotData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TravelSpotResponse implements _TravelSpotResponse {
  const _$_TravelSpotResponse(
      {required this.message,
      required this.meta,
      required final List<TravelSpotData> data})
      : _data = data;

  factory _$_TravelSpotResponse.fromJson(Map<String, dynamic> json) =>
      _$$_TravelSpotResponseFromJson(json);

  @override
  final String message;
  @override
  final Meta meta;
  final List<TravelSpotData> _data;
  @override
  List<TravelSpotData> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'TravelSpotResponse(message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelSpotResponse &&
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
  _$$_TravelSpotResponseCopyWith<_$_TravelSpotResponse> get copyWith =>
      __$$_TravelSpotResponseCopyWithImpl<_$_TravelSpotResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TravelSpotResponseToJson(this);
  }
}

abstract class _TravelSpotResponse implements TravelSpotResponse {
  const factory _TravelSpotResponse(
      {required final String message,
      required final Meta meta,
      required final List<TravelSpotData> data}) = _$_TravelSpotResponse;

  factory _TravelSpotResponse.fromJson(Map<String, dynamic> json) =
      _$_TravelSpotResponse.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  Meta get meta => throw _privateConstructorUsedError;
  @override
  List<TravelSpotData> get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TravelSpotResponseCopyWith<_$_TravelSpotResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TravelSpotData {
  int get id => throw _privateConstructorUsedError;
  Description get name => throw _privateConstructorUsedError;
  Description get description => throw _privateConstructorUsedError;
  Area get area => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TravelSpotDataCopyWith<TravelSpotData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TravelSpotDataCopyWith<$Res> {
  factory $TravelSpotDataCopyWith(
          TravelSpotData value, $Res Function(TravelSpotData) then) =
      _$TravelSpotDataCopyWithImpl<$Res>;
  $Res call(
      {int id,
      Description name,
      Description description,
      Area area,
      String? imageUrl});

  $DescriptionCopyWith<$Res> get name;
  $DescriptionCopyWith<$Res> get description;
  $AreaCopyWith<$Res> get area;
}

/// @nodoc
class _$TravelSpotDataCopyWithImpl<$Res>
    implements $TravelSpotDataCopyWith<$Res> {
  _$TravelSpotDataCopyWithImpl(this._value, this._then);

  final TravelSpotData _value;
  // ignore: unused_field
  final $Res Function(TravelSpotData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? area = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Description,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $DescriptionCopyWith<$Res> get name {
    return $DescriptionCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }

  @override
  $DescriptionCopyWith<$Res> get description {
    return $DescriptionCopyWith<$Res>(_value.description, (value) {
      return _then(_value.copyWith(description: value));
    });
  }

  @override
  $AreaCopyWith<$Res> get area {
    return $AreaCopyWith<$Res>(_value.area, (value) {
      return _then(_value.copyWith(area: value));
    });
  }
}

/// @nodoc
abstract class _$$_TravelSpotDataCopyWith<$Res>
    implements $TravelSpotDataCopyWith<$Res> {
  factory _$$_TravelSpotDataCopyWith(
          _$_TravelSpotData value, $Res Function(_$_TravelSpotData) then) =
      __$$_TravelSpotDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      Description name,
      Description description,
      Area area,
      String? imageUrl});

  @override
  $DescriptionCopyWith<$Res> get name;
  @override
  $DescriptionCopyWith<$Res> get description;
  @override
  $AreaCopyWith<$Res> get area;
}

/// @nodoc
class __$$_TravelSpotDataCopyWithImpl<$Res>
    extends _$TravelSpotDataCopyWithImpl<$Res>
    implements _$$_TravelSpotDataCopyWith<$Res> {
  __$$_TravelSpotDataCopyWithImpl(
      _$_TravelSpotData _value, $Res Function(_$_TravelSpotData) _then)
      : super(_value, (v) => _then(v as _$_TravelSpotData));

  @override
  _$_TravelSpotData get _value => super._value as _$_TravelSpotData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? area = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_$_TravelSpotData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Description,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Description,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TravelSpotData implements _TravelSpotData {
  const _$_TravelSpotData(
      {required this.id,
      required this.name,
      required this.description,
      required this.area,
      required this.imageUrl});

  @override
  final int id;
  @override
  final Description name;
  @override
  final Description description;
  @override
  final Area area;
  @override
  final String? imageUrl;

  @override
  String toString() {
    return 'TravelSpotData(id: $id, name: $name, description: $description, area: $area, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TravelSpotData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(area),
      const DeepCollectionEquality().hash(imageUrl));

  @JsonKey(ignore: true)
  @override
  _$$_TravelSpotDataCopyWith<_$_TravelSpotData> get copyWith =>
      __$$_TravelSpotDataCopyWithImpl<_$_TravelSpotData>(this, _$identity);
}

abstract class _TravelSpotData implements TravelSpotData {
  const factory _TravelSpotData(
      {required final int id,
      required final Description name,
      required final Description description,
      required final Area area,
      required final String? imageUrl}) = _$_TravelSpotData;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  Description get name => throw _privateConstructorUsedError;
  @override
  Description get description => throw _privateConstructorUsedError;
  @override
  Area get area => throw _privateConstructorUsedError;
  @override
  String? get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TravelSpotDataCopyWith<_$_TravelSpotData> get copyWith =>
      throw _privateConstructorUsedError;
}

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
mixin _$Area {
  int get id => throw _privateConstructorUsedError;
  Description get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res>;
  $Res call({int id, Description name});

  $DescriptionCopyWith<$Res> get name;
}

/// @nodoc
class _$AreaCopyWithImpl<$Res> implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  final Area _value;
  // ignore: unused_field
  final $Res Function(Area) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Description,
    ));
  }

  @override
  $DescriptionCopyWith<$Res> get name {
    return $DescriptionCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value));
    });
  }
}

/// @nodoc
abstract class _$$_AreaCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$$_AreaCopyWith(_$_Area value, $Res Function(_$_Area) then) =
      __$$_AreaCopyWithImpl<$Res>;
  @override
  $Res call({int id, Description name});

  @override
  $DescriptionCopyWith<$Res> get name;
}

/// @nodoc
class __$$_AreaCopyWithImpl<$Res> extends _$AreaCopyWithImpl<$Res>
    implements _$$_AreaCopyWith<$Res> {
  __$$_AreaCopyWithImpl(_$_Area _value, $Res Function(_$_Area) _then)
      : super(_value, (v) => _then(v as _$_Area));

  @override
  _$_Area get _value => super._value as _$_Area;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_Area(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Description,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Area implements _Area {
  const _$_Area({required this.id, required this.name});

  factory _$_Area.fromJson(Map<String, dynamic> json) => _$$_AreaFromJson(json);

  @override
  final int id;
  @override
  final Description name;

  @override
  String toString() {
    return 'Area(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Area &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_AreaCopyWith<_$_Area> get copyWith =>
      __$$_AreaCopyWithImpl<_$_Area>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AreaToJson(this);
  }
}

abstract class _Area implements Area {
  const factory _Area(
      {required final int id, required final Description name}) = _$_Area;

  factory _Area.fromJson(Map<String, dynamic> json) = _$_Area.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  Description get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AreaCopyWith<_$_Area> get copyWith => throw _privateConstructorUsedError;
}

Description _$DescriptionFromJson(Map<String, dynamic> json) {
  return _Description.fromJson(json);
}

/// @nodoc
mixin _$Description {
  String? get ja => throw _privateConstructorUsedError;
  String? get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DescriptionCopyWith<Description> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DescriptionCopyWith<$Res> {
  factory $DescriptionCopyWith(
          Description value, $Res Function(Description) then) =
      _$DescriptionCopyWithImpl<$Res>;
  $Res call({String? ja, String? en});
}

/// @nodoc
class _$DescriptionCopyWithImpl<$Res> implements $DescriptionCopyWith<$Res> {
  _$DescriptionCopyWithImpl(this._value, this._then);

  final Description _value;
  // ignore: unused_field
  final $Res Function(Description) _then;

  @override
  $Res call({
    Object? ja = freezed,
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      ja: ja == freezed
          ? _value.ja
          : ja // ignore: cast_nullable_to_non_nullable
              as String?,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DescriptionCopyWith<$Res>
    implements $DescriptionCopyWith<$Res> {
  factory _$$_DescriptionCopyWith(
          _$_Description value, $Res Function(_$_Description) then) =
      __$$_DescriptionCopyWithImpl<$Res>;
  @override
  $Res call({String? ja, String? en});
}

/// @nodoc
class __$$_DescriptionCopyWithImpl<$Res> extends _$DescriptionCopyWithImpl<$Res>
    implements _$$_DescriptionCopyWith<$Res> {
  __$$_DescriptionCopyWithImpl(
      _$_Description _value, $Res Function(_$_Description) _then)
      : super(_value, (v) => _then(v as _$_Description));

  @override
  _$_Description get _value => super._value as _$_Description;

  @override
  $Res call({
    Object? ja = freezed,
    Object? en = freezed,
  }) {
    return _then(_$_Description(
      ja: ja == freezed
          ? _value.ja
          : ja // ignore: cast_nullable_to_non_nullable
              as String?,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Description implements _Description {
  const _$_Description({required this.ja, required this.en});

  factory _$_Description.fromJson(Map<String, dynamic> json) =>
      _$$_DescriptionFromJson(json);

  @override
  final String? ja;
  @override
  final String? en;

  @override
  String toString() {
    return 'Description(ja: $ja, en: $en)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Description &&
            const DeepCollectionEquality().equals(other.ja, ja) &&
            const DeepCollectionEquality().equals(other.en, en));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ja),
      const DeepCollectionEquality().hash(en));

  @JsonKey(ignore: true)
  @override
  _$$_DescriptionCopyWith<_$_Description> get copyWith =>
      __$$_DescriptionCopyWithImpl<_$_Description>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DescriptionToJson(this);
  }
}

abstract class _Description implements Description {
  const factory _Description(
      {required final String? ja, required final String? en}) = _$_Description;

  factory _Description.fromJson(Map<String, dynamic> json) =
      _$_Description.fromJson;

  @override
  String? get ja => throw _privateConstructorUsedError;
  @override
  String? get en => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_DescriptionCopyWith<_$_Description> get copyWith =>
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

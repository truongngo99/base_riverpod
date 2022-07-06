// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'general_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeneralInfoResponse _$GeneralInfoResponseFromJson(Map<String, dynamic> json) {
  return _GeneralInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$GeneralInfoResponse {
  String get message => throw _privateConstructorUsedError;
  GeneralInfoData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralInfoResponseCopyWith<GeneralInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralInfoResponseCopyWith<$Res> {
  factory $GeneralInfoResponseCopyWith(
          GeneralInfoResponse value, $Res Function(GeneralInfoResponse) then) =
      _$GeneralInfoResponseCopyWithImpl<$Res>;
  $Res call({String message, GeneralInfoData data});

  $GeneralInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class _$GeneralInfoResponseCopyWithImpl<$Res>
    implements $GeneralInfoResponseCopyWith<$Res> {
  _$GeneralInfoResponseCopyWithImpl(this._value, this._then);

  final GeneralInfoResponse _value;
  // ignore: unused_field
  final $Res Function(GeneralInfoResponse) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GeneralInfoData,
    ));
  }

  @override
  $GeneralInfoDataCopyWith<$Res> get data {
    return $GeneralInfoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_GeneralInfoResponseCopyWith<$Res>
    implements $GeneralInfoResponseCopyWith<$Res> {
  factory _$$_GeneralInfoResponseCopyWith(_$_GeneralInfoResponse value,
          $Res Function(_$_GeneralInfoResponse) then) =
      __$$_GeneralInfoResponseCopyWithImpl<$Res>;
  @override
  $Res call({String message, GeneralInfoData data});

  @override
  $GeneralInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_GeneralInfoResponseCopyWithImpl<$Res>
    extends _$GeneralInfoResponseCopyWithImpl<$Res>
    implements _$$_GeneralInfoResponseCopyWith<$Res> {
  __$$_GeneralInfoResponseCopyWithImpl(_$_GeneralInfoResponse _value,
      $Res Function(_$_GeneralInfoResponse) _then)
      : super(_value, (v) => _then(v as _$_GeneralInfoResponse));

  @override
  _$_GeneralInfoResponse get _value => super._value as _$_GeneralInfoResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_GeneralInfoResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GeneralInfoData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneralInfoResponse implements _GeneralInfoResponse {
  const _$_GeneralInfoResponse({required this.message, required this.data});

  factory _$_GeneralInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralInfoResponseFromJson(json);

  @override
  final String message;
  @override
  final GeneralInfoData data;

  @override
  String toString() {
    return 'GeneralInfoResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralInfoResponse &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$_GeneralInfoResponseCopyWith<_$_GeneralInfoResponse> get copyWith =>
      __$$_GeneralInfoResponseCopyWithImpl<_$_GeneralInfoResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralInfoResponseToJson(this);
  }
}

abstract class _GeneralInfoResponse implements GeneralInfoResponse {
  const factory _GeneralInfoResponse(
      {required final String message,
      required final GeneralInfoData data}) = _$_GeneralInfoResponse;

  factory _GeneralInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_GeneralInfoResponse.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  GeneralInfoData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralInfoResponseCopyWith<_$_GeneralInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

GeneralInfoData _$GeneralInfoDataFromJson(Map<String, dynamic> json) {
  return _GeneralInfoData.fromJson(json);
}

/// @nodoc
mixin _$GeneralInfoData {
  Catchphrase get catchphrase => throw _privateConstructorUsedError;
  Catchphrase get travelOrganizations => throw _privateConstructorUsedError;
  List<LanguageSkill> get languageSkills => throw _privateConstructorUsedError;
  List<GeneralInfo> get generalInfos => throw _privateConstructorUsedError;
  Catchphrase get selfIntroduction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralInfoDataCopyWith<GeneralInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralInfoDataCopyWith<$Res> {
  factory $GeneralInfoDataCopyWith(
          GeneralInfoData value, $Res Function(GeneralInfoData) then) =
      _$GeneralInfoDataCopyWithImpl<$Res>;
  $Res call(
      {Catchphrase catchphrase,
      Catchphrase travelOrganizations,
      List<LanguageSkill> languageSkills,
      List<GeneralInfo> generalInfos,
      Catchphrase selfIntroduction});

  $CatchphraseCopyWith<$Res> get catchphrase;
  $CatchphraseCopyWith<$Res> get travelOrganizations;
  $CatchphraseCopyWith<$Res> get selfIntroduction;
}

/// @nodoc
class _$GeneralInfoDataCopyWithImpl<$Res>
    implements $GeneralInfoDataCopyWith<$Res> {
  _$GeneralInfoDataCopyWithImpl(this._value, this._then);

  final GeneralInfoData _value;
  // ignore: unused_field
  final $Res Function(GeneralInfoData) _then;

  @override
  $Res call({
    Object? catchphrase = freezed,
    Object? travelOrganizations = freezed,
    Object? languageSkills = freezed,
    Object? generalInfos = freezed,
    Object? selfIntroduction = freezed,
  }) {
    return _then(_value.copyWith(
      catchphrase: catchphrase == freezed
          ? _value.catchphrase
          : catchphrase // ignore: cast_nullable_to_non_nullable
              as Catchphrase,
      travelOrganizations: travelOrganizations == freezed
          ? _value.travelOrganizations
          : travelOrganizations // ignore: cast_nullable_to_non_nullable
              as Catchphrase,
      languageSkills: languageSkills == freezed
          ? _value.languageSkills
          : languageSkills // ignore: cast_nullable_to_non_nullable
              as List<LanguageSkill>,
      generalInfos: generalInfos == freezed
          ? _value.generalInfos
          : generalInfos // ignore: cast_nullable_to_non_nullable
              as List<GeneralInfo>,
      selfIntroduction: selfIntroduction == freezed
          ? _value.selfIntroduction
          : selfIntroduction // ignore: cast_nullable_to_non_nullable
              as Catchphrase,
    ));
  }

  @override
  $CatchphraseCopyWith<$Res> get catchphrase {
    return $CatchphraseCopyWith<$Res>(_value.catchphrase, (value) {
      return _then(_value.copyWith(catchphrase: value));
    });
  }

  @override
  $CatchphraseCopyWith<$Res> get travelOrganizations {
    return $CatchphraseCopyWith<$Res>(_value.travelOrganizations, (value) {
      return _then(_value.copyWith(travelOrganizations: value));
    });
  }

  @override
  $CatchphraseCopyWith<$Res> get selfIntroduction {
    return $CatchphraseCopyWith<$Res>(_value.selfIntroduction, (value) {
      return _then(_value.copyWith(selfIntroduction: value));
    });
  }
}

/// @nodoc
abstract class _$$_GeneralInfoDataCopyWith<$Res>
    implements $GeneralInfoDataCopyWith<$Res> {
  factory _$$_GeneralInfoDataCopyWith(
          _$_GeneralInfoData value, $Res Function(_$_GeneralInfoData) then) =
      __$$_GeneralInfoDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {Catchphrase catchphrase,
      Catchphrase travelOrganizations,
      List<LanguageSkill> languageSkills,
      List<GeneralInfo> generalInfos,
      Catchphrase selfIntroduction});

  @override
  $CatchphraseCopyWith<$Res> get catchphrase;
  @override
  $CatchphraseCopyWith<$Res> get travelOrganizations;
  @override
  $CatchphraseCopyWith<$Res> get selfIntroduction;
}

/// @nodoc
class __$$_GeneralInfoDataCopyWithImpl<$Res>
    extends _$GeneralInfoDataCopyWithImpl<$Res>
    implements _$$_GeneralInfoDataCopyWith<$Res> {
  __$$_GeneralInfoDataCopyWithImpl(
      _$_GeneralInfoData _value, $Res Function(_$_GeneralInfoData) _then)
      : super(_value, (v) => _then(v as _$_GeneralInfoData));

  @override
  _$_GeneralInfoData get _value => super._value as _$_GeneralInfoData;

  @override
  $Res call({
    Object? catchphrase = freezed,
    Object? travelOrganizations = freezed,
    Object? languageSkills = freezed,
    Object? generalInfos = freezed,
    Object? selfIntroduction = freezed,
  }) {
    return _then(_$_GeneralInfoData(
      catchphrase: catchphrase == freezed
          ? _value.catchphrase
          : catchphrase // ignore: cast_nullable_to_non_nullable
              as Catchphrase,
      travelOrganizations: travelOrganizations == freezed
          ? _value.travelOrganizations
          : travelOrganizations // ignore: cast_nullable_to_non_nullable
              as Catchphrase,
      languageSkills: languageSkills == freezed
          ? _value._languageSkills
          : languageSkills // ignore: cast_nullable_to_non_nullable
              as List<LanguageSkill>,
      generalInfos: generalInfos == freezed
          ? _value._generalInfos
          : generalInfos // ignore: cast_nullable_to_non_nullable
              as List<GeneralInfo>,
      selfIntroduction: selfIntroduction == freezed
          ? _value.selfIntroduction
          : selfIntroduction // ignore: cast_nullable_to_non_nullable
              as Catchphrase,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneralInfoData implements _GeneralInfoData {
  const _$_GeneralInfoData(
      {required this.catchphrase,
      required this.travelOrganizations,
      required final List<LanguageSkill> languageSkills,
      required final List<GeneralInfo> generalInfos,
      required this.selfIntroduction})
      : _languageSkills = languageSkills,
        _generalInfos = generalInfos;

  factory _$_GeneralInfoData.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralInfoDataFromJson(json);

  @override
  final Catchphrase catchphrase;
  @override
  final Catchphrase travelOrganizations;
  final List<LanguageSkill> _languageSkills;
  @override
  List<LanguageSkill> get languageSkills {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languageSkills);
  }

  final List<GeneralInfo> _generalInfos;
  @override
  List<GeneralInfo> get generalInfos {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_generalInfos);
  }

  @override
  final Catchphrase selfIntroduction;

  @override
  String toString() {
    return 'GeneralInfoData(catchphrase: $catchphrase, travelOrganizations: $travelOrganizations, languageSkills: $languageSkills, generalInfos: $generalInfos, selfIntroduction: $selfIntroduction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralInfoData &&
            const DeepCollectionEquality()
                .equals(other.catchphrase, catchphrase) &&
            const DeepCollectionEquality()
                .equals(other.travelOrganizations, travelOrganizations) &&
            const DeepCollectionEquality()
                .equals(other._languageSkills, _languageSkills) &&
            const DeepCollectionEquality()
                .equals(other._generalInfos, _generalInfos) &&
            const DeepCollectionEquality()
                .equals(other.selfIntroduction, selfIntroduction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(catchphrase),
      const DeepCollectionEquality().hash(travelOrganizations),
      const DeepCollectionEquality().hash(_languageSkills),
      const DeepCollectionEquality().hash(_generalInfos),
      const DeepCollectionEquality().hash(selfIntroduction));

  @JsonKey(ignore: true)
  @override
  _$$_GeneralInfoDataCopyWith<_$_GeneralInfoData> get copyWith =>
      __$$_GeneralInfoDataCopyWithImpl<_$_GeneralInfoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralInfoDataToJson(this);
  }
}

abstract class _GeneralInfoData implements GeneralInfoData {
  const factory _GeneralInfoData(
      {required final Catchphrase catchphrase,
      required final Catchphrase travelOrganizations,
      required final List<LanguageSkill> languageSkills,
      required final List<GeneralInfo> generalInfos,
      required final Catchphrase selfIntroduction}) = _$_GeneralInfoData;

  factory _GeneralInfoData.fromJson(Map<String, dynamic> json) =
      _$_GeneralInfoData.fromJson;

  @override
  Catchphrase get catchphrase => throw _privateConstructorUsedError;
  @override
  Catchphrase get travelOrganizations => throw _privateConstructorUsedError;
  @override
  List<LanguageSkill> get languageSkills => throw _privateConstructorUsedError;
  @override
  List<GeneralInfo> get generalInfos => throw _privateConstructorUsedError;
  @override
  Catchphrase get selfIntroduction => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralInfoDataCopyWith<_$_GeneralInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

Catchphrase _$CatchphraseFromJson(Map<String, dynamic> json) {
  return _Catchphrase.fromJson(json);
}

/// @nodoc
mixin _$Catchphrase {
  dynamic get ja => throw _privateConstructorUsedError;
  dynamic get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatchphraseCopyWith<Catchphrase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatchphraseCopyWith<$Res> {
  factory $CatchphraseCopyWith(
          Catchphrase value, $Res Function(Catchphrase) then) =
      _$CatchphraseCopyWithImpl<$Res>;
  $Res call({dynamic ja, dynamic en});
}

/// @nodoc
class _$CatchphraseCopyWithImpl<$Res> implements $CatchphraseCopyWith<$Res> {
  _$CatchphraseCopyWithImpl(this._value, this._then);

  final Catchphrase _value;
  // ignore: unused_field
  final $Res Function(Catchphrase) _then;

  @override
  $Res call({
    Object? ja = freezed,
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      ja: ja == freezed
          ? _value.ja
          : ja // ignore: cast_nullable_to_non_nullable
              as dynamic,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_CatchphraseCopyWith<$Res>
    implements $CatchphraseCopyWith<$Res> {
  factory _$$_CatchphraseCopyWith(
          _$_Catchphrase value, $Res Function(_$_Catchphrase) then) =
      __$$_CatchphraseCopyWithImpl<$Res>;
  @override
  $Res call({dynamic ja, dynamic en});
}

/// @nodoc
class __$$_CatchphraseCopyWithImpl<$Res> extends _$CatchphraseCopyWithImpl<$Res>
    implements _$$_CatchphraseCopyWith<$Res> {
  __$$_CatchphraseCopyWithImpl(
      _$_Catchphrase _value, $Res Function(_$_Catchphrase) _then)
      : super(_value, (v) => _then(v as _$_Catchphrase));

  @override
  _$_Catchphrase get _value => super._value as _$_Catchphrase;

  @override
  $Res call({
    Object? ja = freezed,
    Object? en = freezed,
  }) {
    return _then(_$_Catchphrase(
      ja: ja == freezed
          ? _value.ja
          : ja // ignore: cast_nullable_to_non_nullable
              as dynamic,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Catchphrase implements _Catchphrase {
  const _$_Catchphrase({required this.ja, required this.en});

  factory _$_Catchphrase.fromJson(Map<String, dynamic> json) =>
      _$$_CatchphraseFromJson(json);

  @override
  final dynamic ja;
  @override
  final dynamic en;

  @override
  String toString() {
    return 'Catchphrase(ja: $ja, en: $en)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Catchphrase &&
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
  _$$_CatchphraseCopyWith<_$_Catchphrase> get copyWith =>
      __$$_CatchphraseCopyWithImpl<_$_Catchphrase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CatchphraseToJson(this);
  }
}

abstract class _Catchphrase implements Catchphrase {
  const factory _Catchphrase(
      {required final dynamic ja, required final dynamic en}) = _$_Catchphrase;

  factory _Catchphrase.fromJson(Map<String, dynamic> json) =
      _$_Catchphrase.fromJson;

  @override
  dynamic get ja => throw _privateConstructorUsedError;
  @override
  dynamic get en => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CatchphraseCopyWith<_$_Catchphrase> get copyWith =>
      throw _privateConstructorUsedError;
}

GeneralInfo _$GeneralInfoFromJson(Map<String, dynamic> json) {
  return _GeneralInfo.fromJson(json);
}

/// @nodoc
mixin _$GeneralInfo {
  int get id => throw _privateConstructorUsedError;
  String get inputType => throw _privateConstructorUsedError;
  Catchphrase get value => throw _privateConstructorUsedError;
  String get mediaUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeneralInfoCopyWith<GeneralInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeneralInfoCopyWith<$Res> {
  factory $GeneralInfoCopyWith(
          GeneralInfo value, $Res Function(GeneralInfo) then) =
      _$GeneralInfoCopyWithImpl<$Res>;
  $Res call({int id, String inputType, Catchphrase value, String mediaUrl});

  $CatchphraseCopyWith<$Res> get value;
}

/// @nodoc
class _$GeneralInfoCopyWithImpl<$Res> implements $GeneralInfoCopyWith<$Res> {
  _$GeneralInfoCopyWithImpl(this._value, this._then);

  final GeneralInfo _value;
  // ignore: unused_field
  final $Res Function(GeneralInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? inputType = freezed,
    Object? value = freezed,
    Object? mediaUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inputType: inputType == freezed
          ? _value.inputType
          : inputType // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Catchphrase,
      mediaUrl: mediaUrl == freezed
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $CatchphraseCopyWith<$Res> get value {
    return $CatchphraseCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value));
    });
  }
}

/// @nodoc
abstract class _$$_GeneralInfoCopyWith<$Res>
    implements $GeneralInfoCopyWith<$Res> {
  factory _$$_GeneralInfoCopyWith(
          _$_GeneralInfo value, $Res Function(_$_GeneralInfo) then) =
      __$$_GeneralInfoCopyWithImpl<$Res>;
  @override
  $Res call({int id, String inputType, Catchphrase value, String mediaUrl});

  @override
  $CatchphraseCopyWith<$Res> get value;
}

/// @nodoc
class __$$_GeneralInfoCopyWithImpl<$Res> extends _$GeneralInfoCopyWithImpl<$Res>
    implements _$$_GeneralInfoCopyWith<$Res> {
  __$$_GeneralInfoCopyWithImpl(
      _$_GeneralInfo _value, $Res Function(_$_GeneralInfo) _then)
      : super(_value, (v) => _then(v as _$_GeneralInfo));

  @override
  _$_GeneralInfo get _value => super._value as _$_GeneralInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? inputType = freezed,
    Object? value = freezed,
    Object? mediaUrl = freezed,
  }) {
    return _then(_$_GeneralInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      inputType: inputType == freezed
          ? _value.inputType
          : inputType // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Catchphrase,
      mediaUrl: mediaUrl == freezed
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GeneralInfo implements _GeneralInfo {
  const _$_GeneralInfo(
      {required this.id,
      required this.inputType,
      required this.value,
      required this.mediaUrl});

  factory _$_GeneralInfo.fromJson(Map<String, dynamic> json) =>
      _$$_GeneralInfoFromJson(json);

  @override
  final int id;
  @override
  final String inputType;
  @override
  final Catchphrase value;
  @override
  final String mediaUrl;

  @override
  String toString() {
    return 'GeneralInfo(id: $id, inputType: $inputType, value: $value, mediaUrl: $mediaUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GeneralInfo &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.inputType, inputType) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.mediaUrl, mediaUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(inputType),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(mediaUrl));

  @JsonKey(ignore: true)
  @override
  _$$_GeneralInfoCopyWith<_$_GeneralInfo> get copyWith =>
      __$$_GeneralInfoCopyWithImpl<_$_GeneralInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GeneralInfoToJson(this);
  }
}

abstract class _GeneralInfo implements GeneralInfo {
  const factory _GeneralInfo(
      {required final int id,
      required final String inputType,
      required final Catchphrase value,
      required final String mediaUrl}) = _$_GeneralInfo;

  factory _GeneralInfo.fromJson(Map<String, dynamic> json) =
      _$_GeneralInfo.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get inputType => throw _privateConstructorUsedError;
  @override
  Catchphrase get value => throw _privateConstructorUsedError;
  @override
  String get mediaUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GeneralInfoCopyWith<_$_GeneralInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageSkill _$LanguageSkillFromJson(Map<String, dynamic> json) {
  return _LanguageSkill.fromJson(json);
}

/// @nodoc
mixin _$LanguageSkill {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get level => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LanguageSkillCopyWith<LanguageSkill> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageSkillCopyWith<$Res> {
  factory $LanguageSkillCopyWith(
          LanguageSkill value, $Res Function(LanguageSkill) then) =
      _$LanguageSkillCopyWithImpl<$Res>;
  $Res call({int id, String name, String level});
}

/// @nodoc
class _$LanguageSkillCopyWithImpl<$Res>
    implements $LanguageSkillCopyWith<$Res> {
  _$LanguageSkillCopyWithImpl(this._value, this._then);

  final LanguageSkill _value;
  // ignore: unused_field
  final $Res Function(LanguageSkill) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
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
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LanguageSkillCopyWith<$Res>
    implements $LanguageSkillCopyWith<$Res> {
  factory _$$_LanguageSkillCopyWith(
          _$_LanguageSkill value, $Res Function(_$_LanguageSkill) then) =
      __$$_LanguageSkillCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, String level});
}

/// @nodoc
class __$$_LanguageSkillCopyWithImpl<$Res>
    extends _$LanguageSkillCopyWithImpl<$Res>
    implements _$$_LanguageSkillCopyWith<$Res> {
  __$$_LanguageSkillCopyWithImpl(
      _$_LanguageSkill _value, $Res Function(_$_LanguageSkill) _then)
      : super(_value, (v) => _then(v as _$_LanguageSkill));

  @override
  _$_LanguageSkill get _value => super._value as _$_LanguageSkill;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? level = freezed,
  }) {
    return _then(_$_LanguageSkill(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LanguageSkill implements _LanguageSkill {
  const _$_LanguageSkill(
      {required this.id, required this.name, required this.level});

  factory _$_LanguageSkill.fromJson(Map<String, dynamic> json) =>
      _$$_LanguageSkillFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String level;

  @override
  String toString() {
    return 'LanguageSkill(id: $id, name: $name, level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LanguageSkill &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.level, level));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(level));

  @JsonKey(ignore: true)
  @override
  _$$_LanguageSkillCopyWith<_$_LanguageSkill> get copyWith =>
      __$$_LanguageSkillCopyWithImpl<_$_LanguageSkill>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LanguageSkillToJson(this);
  }
}

abstract class _LanguageSkill implements LanguageSkill {
  const factory _LanguageSkill(
      {required final int id,
      required final String name,
      required final String level}) = _$_LanguageSkill;

  factory _LanguageSkill.fromJson(Map<String, dynamic> json) =
      _$_LanguageSkill.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get level => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LanguageSkillCopyWith<_$_LanguageSkill> get copyWith =>
      throw _privateConstructorUsedError;
}
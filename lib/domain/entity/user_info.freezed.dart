// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserInfoResponse _$UserInfoResponseFromJson(Map<String, dynamic> json) {
  return _UserInfoResponse.fromJson(json);
}

/// @nodoc
mixin _$UserInfoResponse {
  String get message => throw _privateConstructorUsedError;
  UserInfoData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoResponseCopyWith<UserInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoResponseCopyWith<$Res> {
  factory $UserInfoResponseCopyWith(
          UserInfoResponse value, $Res Function(UserInfoResponse) then) =
      _$UserInfoResponseCopyWithImpl<$Res>;
  $Res call({String message, UserInfoData data});

  $UserInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class _$UserInfoResponseCopyWithImpl<$Res>
    implements $UserInfoResponseCopyWith<$Res> {
  _$UserInfoResponseCopyWithImpl(this._value, this._then);

  final UserInfoResponse _value;
  // ignore: unused_field
  final $Res Function(UserInfoResponse) _then;

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
              as UserInfoData,
    ));
  }

  @override
  $UserInfoDataCopyWith<$Res> get data {
    return $UserInfoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserInfoResponseCopyWith<$Res>
    implements $UserInfoResponseCopyWith<$Res> {
  factory _$$_UserInfoResponseCopyWith(
          _$_UserInfoResponse value, $Res Function(_$_UserInfoResponse) then) =
      __$$_UserInfoResponseCopyWithImpl<$Res>;
  @override
  $Res call({String message, UserInfoData data});

  @override
  $UserInfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$_UserInfoResponseCopyWithImpl<$Res>
    extends _$UserInfoResponseCopyWithImpl<$Res>
    implements _$$_UserInfoResponseCopyWith<$Res> {
  __$$_UserInfoResponseCopyWithImpl(
      _$_UserInfoResponse _value, $Res Function(_$_UserInfoResponse) _then)
      : super(_value, (v) => _then(v as _$_UserInfoResponse));

  @override
  _$_UserInfoResponse get _value => super._value as _$_UserInfoResponse;

  @override
  $Res call({
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_UserInfoResponse(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserInfoData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfoResponse implements _UserInfoResponse {
  const _$_UserInfoResponse({required this.message, required this.data});

  factory _$_UserInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoResponseFromJson(json);

  @override
  final String message;
  @override
  final UserInfoData data;

  @override
  String toString() {
    return 'UserInfoResponse(message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoResponse &&
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
  _$$_UserInfoResponseCopyWith<_$_UserInfoResponse> get copyWith =>
      __$$_UserInfoResponseCopyWithImpl<_$_UserInfoResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoResponseToJson(this);
  }
}

abstract class _UserInfoResponse implements UserInfoResponse {
  const factory _UserInfoResponse(
      {required final String message,
      required final UserInfoData data}) = _$_UserInfoResponse;

  factory _UserInfoResponse.fromJson(Map<String, dynamic> json) =
      _$_UserInfoResponse.fromJson;

  @override
  String get message => throw _privateConstructorUsedError;
  @override
  UserInfoData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoResponseCopyWith<_$_UserInfoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfoData _$UserInfoDataFromJson(Map<String, dynamic> json) {
  return _UserInfoData.fromJson(json);
}

/// @nodoc
mixin _$UserInfoData {
  String get email => throw _privateConstructorUsedError;
  StName get firstName => throw _privateConstructorUsedError;
  StName get lastName => throw _privateConstructorUsedError;
  DateTime get birthday => throw _privateConstructorUsedError;
  dynamic get couponCode => throw _privateConstructorUsedError;
  bool get subscription => throw _privateConstructorUsedError;
  AryLanguage get primaryLanguage => throw _privateConstructorUsedError;
  AryLanguage get secondaryLanguage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoDataCopyWith<UserInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoDataCopyWith<$Res> {
  factory $UserInfoDataCopyWith(
          UserInfoData value, $Res Function(UserInfoData) then) =
      _$UserInfoDataCopyWithImpl<$Res>;
  $Res call(
      {String email,
      StName firstName,
      StName lastName,
      DateTime birthday,
      dynamic couponCode,
      bool subscription,
      AryLanguage primaryLanguage,
      AryLanguage secondaryLanguage});

  $StNameCopyWith<$Res> get firstName;
  $StNameCopyWith<$Res> get lastName;
  $AryLanguageCopyWith<$Res> get primaryLanguage;
  $AryLanguageCopyWith<$Res> get secondaryLanguage;
}

/// @nodoc
class _$UserInfoDataCopyWithImpl<$Res> implements $UserInfoDataCopyWith<$Res> {
  _$UserInfoDataCopyWithImpl(this._value, this._then);

  final UserInfoData _value;
  // ignore: unused_field
  final $Res Function(UserInfoData) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthday = freezed,
    Object? couponCode = freezed,
    Object? subscription = freezed,
    Object? primaryLanguage = freezed,
    Object? secondaryLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as StName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as StName,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      couponCode: couponCode == freezed
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subscription: subscription == freezed
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryLanguage: primaryLanguage == freezed
          ? _value.primaryLanguage
          : primaryLanguage // ignore: cast_nullable_to_non_nullable
              as AryLanguage,
      secondaryLanguage: secondaryLanguage == freezed
          ? _value.secondaryLanguage
          : secondaryLanguage // ignore: cast_nullable_to_non_nullable
              as AryLanguage,
    ));
  }

  @override
  $StNameCopyWith<$Res> get firstName {
    return $StNameCopyWith<$Res>(_value.firstName, (value) {
      return _then(_value.copyWith(firstName: value));
    });
  }

  @override
  $StNameCopyWith<$Res> get lastName {
    return $StNameCopyWith<$Res>(_value.lastName, (value) {
      return _then(_value.copyWith(lastName: value));
    });
  }

  @override
  $AryLanguageCopyWith<$Res> get primaryLanguage {
    return $AryLanguageCopyWith<$Res>(_value.primaryLanguage, (value) {
      return _then(_value.copyWith(primaryLanguage: value));
    });
  }

  @override
  $AryLanguageCopyWith<$Res> get secondaryLanguage {
    return $AryLanguageCopyWith<$Res>(_value.secondaryLanguage, (value) {
      return _then(_value.copyWith(secondaryLanguage: value));
    });
  }
}

/// @nodoc
abstract class _$$_UserInfoDataCopyWith<$Res>
    implements $UserInfoDataCopyWith<$Res> {
  factory _$$_UserInfoDataCopyWith(
          _$_UserInfoData value, $Res Function(_$_UserInfoData) then) =
      __$$_UserInfoDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      StName firstName,
      StName lastName,
      DateTime birthday,
      dynamic couponCode,
      bool subscription,
      AryLanguage primaryLanguage,
      AryLanguage secondaryLanguage});

  @override
  $StNameCopyWith<$Res> get firstName;
  @override
  $StNameCopyWith<$Res> get lastName;
  @override
  $AryLanguageCopyWith<$Res> get primaryLanguage;
  @override
  $AryLanguageCopyWith<$Res> get secondaryLanguage;
}

/// @nodoc
class __$$_UserInfoDataCopyWithImpl<$Res>
    extends _$UserInfoDataCopyWithImpl<$Res>
    implements _$$_UserInfoDataCopyWith<$Res> {
  __$$_UserInfoDataCopyWithImpl(
      _$_UserInfoData _value, $Res Function(_$_UserInfoData) _then)
      : super(_value, (v) => _then(v as _$_UserInfoData));

  @override
  _$_UserInfoData get _value => super._value as _$_UserInfoData;

  @override
  $Res call({
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? birthday = freezed,
    Object? couponCode = freezed,
    Object? subscription = freezed,
    Object? primaryLanguage = freezed,
    Object? secondaryLanguage = freezed,
  }) {
    return _then(_$_UserInfoData(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as StName,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as StName,
      birthday: birthday == freezed
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      couponCode: couponCode == freezed
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      subscription: subscription == freezed
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as bool,
      primaryLanguage: primaryLanguage == freezed
          ? _value.primaryLanguage
          : primaryLanguage // ignore: cast_nullable_to_non_nullable
              as AryLanguage,
      secondaryLanguage: secondaryLanguage == freezed
          ? _value.secondaryLanguage
          : secondaryLanguage // ignore: cast_nullable_to_non_nullable
              as AryLanguage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserInfoData implements _UserInfoData {
  const _$_UserInfoData(
      {required this.email,
      required this.firstName,
      required this.lastName,
      required this.birthday,
      required this.couponCode,
      required this.subscription,
      required this.primaryLanguage,
      required this.secondaryLanguage});

  factory _$_UserInfoData.fromJson(Map<String, dynamic> json) =>
      _$$_UserInfoDataFromJson(json);

  @override
  final String email;
  @override
  final StName firstName;
  @override
  final StName lastName;
  @override
  final DateTime birthday;
  @override
  final dynamic couponCode;
  @override
  final bool subscription;
  @override
  final AryLanguage primaryLanguage;
  @override
  final AryLanguage secondaryLanguage;

  @override
  String toString() {
    return 'UserInfoData(email: $email, firstName: $firstName, lastName: $lastName, birthday: $birthday, couponCode: $couponCode, subscription: $subscription, primaryLanguage: $primaryLanguage, secondaryLanguage: $secondaryLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserInfoData &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.birthday, birthday) &&
            const DeepCollectionEquality()
                .equals(other.couponCode, couponCode) &&
            const DeepCollectionEquality()
                .equals(other.subscription, subscription) &&
            const DeepCollectionEquality()
                .equals(other.primaryLanguage, primaryLanguage) &&
            const DeepCollectionEquality()
                .equals(other.secondaryLanguage, secondaryLanguage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(birthday),
      const DeepCollectionEquality().hash(couponCode),
      const DeepCollectionEquality().hash(subscription),
      const DeepCollectionEquality().hash(primaryLanguage),
      const DeepCollectionEquality().hash(secondaryLanguage));

  @JsonKey(ignore: true)
  @override
  _$$_UserInfoDataCopyWith<_$_UserInfoData> get copyWith =>
      __$$_UserInfoDataCopyWithImpl<_$_UserInfoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserInfoDataToJson(this);
  }
}

abstract class _UserInfoData implements UserInfoData {
  const factory _UserInfoData(
      {required final String email,
      required final StName firstName,
      required final StName lastName,
      required final DateTime birthday,
      required final dynamic couponCode,
      required final bool subscription,
      required final AryLanguage primaryLanguage,
      required final AryLanguage secondaryLanguage}) = _$_UserInfoData;

  factory _UserInfoData.fromJson(Map<String, dynamic> json) =
      _$_UserInfoData.fromJson;

  @override
  String get email => throw _privateConstructorUsedError;
  @override
  StName get firstName => throw _privateConstructorUsedError;
  @override
  StName get lastName => throw _privateConstructorUsedError;
  @override
  DateTime get birthday => throw _privateConstructorUsedError;
  @override
  dynamic get couponCode => throw _privateConstructorUsedError;
  @override
  bool get subscription => throw _privateConstructorUsedError;
  @override
  AryLanguage get primaryLanguage => throw _privateConstructorUsedError;
  @override
  AryLanguage get secondaryLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserInfoDataCopyWith<_$_UserInfoData> get copyWith =>
      throw _privateConstructorUsedError;
}

StName _$StNameFromJson(Map<String, dynamic> json) {
  return _StName.fromJson(json);
}

/// @nodoc
mixin _$StName {
  String get ja => throw _privateConstructorUsedError;
  String get en => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StNameCopyWith<StName> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StNameCopyWith<$Res> {
  factory $StNameCopyWith(StName value, $Res Function(StName) then) =
      _$StNameCopyWithImpl<$Res>;
  $Res call({String ja, String en});
}

/// @nodoc
class _$StNameCopyWithImpl<$Res> implements $StNameCopyWith<$Res> {
  _$StNameCopyWithImpl(this._value, this._then);

  final StName _value;
  // ignore: unused_field
  final $Res Function(StName) _then;

  @override
  $Res call({
    Object? ja = freezed,
    Object? en = freezed,
  }) {
    return _then(_value.copyWith(
      ja: ja == freezed
          ? _value.ja
          : ja // ignore: cast_nullable_to_non_nullable
              as String,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StNameCopyWith<$Res> implements $StNameCopyWith<$Res> {
  factory _$$_StNameCopyWith(_$_StName value, $Res Function(_$_StName) then) =
      __$$_StNameCopyWithImpl<$Res>;
  @override
  $Res call({String ja, String en});
}

/// @nodoc
class __$$_StNameCopyWithImpl<$Res> extends _$StNameCopyWithImpl<$Res>
    implements _$$_StNameCopyWith<$Res> {
  __$$_StNameCopyWithImpl(_$_StName _value, $Res Function(_$_StName) _then)
      : super(_value, (v) => _then(v as _$_StName));

  @override
  _$_StName get _value => super._value as _$_StName;

  @override
  $Res call({
    Object? ja = freezed,
    Object? en = freezed,
  }) {
    return _then(_$_StName(
      ja: ja == freezed
          ? _value.ja
          : ja // ignore: cast_nullable_to_non_nullable
              as String,
      en: en == freezed
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StName implements _StName {
  const _$_StName({required this.ja, required this.en});

  factory _$_StName.fromJson(Map<String, dynamic> json) =>
      _$$_StNameFromJson(json);

  @override
  final String ja;
  @override
  final String en;

  @override
  String toString() {
    return 'StName(ja: $ja, en: $en)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StName &&
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
  _$$_StNameCopyWith<_$_StName> get copyWith =>
      __$$_StNameCopyWithImpl<_$_StName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StNameToJson(this);
  }
}

abstract class _StName implements StName {
  const factory _StName({required final String ja, required final String en}) =
      _$_StName;

  factory _StName.fromJson(Map<String, dynamic> json) = _$_StName.fromJson;

  @override
  String get ja => throw _privateConstructorUsedError;
  @override
  String get en => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_StNameCopyWith<_$_StName> get copyWith =>
      throw _privateConstructorUsedError;
}

AryLanguage _$AryLanguageFromJson(Map<String, dynamic> json) {
  return _AryLanguage.fromJson(json);
}

/// @nodoc
mixin _$AryLanguage {
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get nameJa => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AryLanguageCopyWith<AryLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AryLanguageCopyWith<$Res> {
  factory $AryLanguageCopyWith(
          AryLanguage value, $Res Function(AryLanguage) then) =
      _$AryLanguageCopyWithImpl<$Res>;
  $Res call({String code, String name, String nameJa});
}

/// @nodoc
class _$AryLanguageCopyWithImpl<$Res> implements $AryLanguageCopyWith<$Res> {
  _$AryLanguageCopyWithImpl(this._value, this._then);

  final AryLanguage _value;
  // ignore: unused_field
  final $Res Function(AryLanguage) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? nameJa = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameJa: nameJa == freezed
          ? _value.nameJa
          : nameJa // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AryLanguageCopyWith<$Res>
    implements $AryLanguageCopyWith<$Res> {
  factory _$$_AryLanguageCopyWith(
          _$_AryLanguage value, $Res Function(_$_AryLanguage) then) =
      __$$_AryLanguageCopyWithImpl<$Res>;
  @override
  $Res call({String code, String name, String nameJa});
}

/// @nodoc
class __$$_AryLanguageCopyWithImpl<$Res> extends _$AryLanguageCopyWithImpl<$Res>
    implements _$$_AryLanguageCopyWith<$Res> {
  __$$_AryLanguageCopyWithImpl(
      _$_AryLanguage _value, $Res Function(_$_AryLanguage) _then)
      : super(_value, (v) => _then(v as _$_AryLanguage));

  @override
  _$_AryLanguage get _value => super._value as _$_AryLanguage;

  @override
  $Res call({
    Object? code = freezed,
    Object? name = freezed,
    Object? nameJa = freezed,
  }) {
    return _then(_$_AryLanguage(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      nameJa: nameJa == freezed
          ? _value.nameJa
          : nameJa // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AryLanguage implements _AryLanguage {
  const _$_AryLanguage(
      {required this.code, required this.name, required this.nameJa});

  factory _$_AryLanguage.fromJson(Map<String, dynamic> json) =>
      _$$_AryLanguageFromJson(json);

  @override
  final String code;
  @override
  final String name;
  @override
  final String nameJa;

  @override
  String toString() {
    return 'AryLanguage(code: $code, name: $name, nameJa: $nameJa)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AryLanguage &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.nameJa, nameJa));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(nameJa));

  @JsonKey(ignore: true)
  @override
  _$$_AryLanguageCopyWith<_$_AryLanguage> get copyWith =>
      __$$_AryLanguageCopyWithImpl<_$_AryLanguage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AryLanguageToJson(this);
  }
}

abstract class _AryLanguage implements AryLanguage {
  const factory _AryLanguage(
      {required final String code,
      required final String name,
      required final String nameJa}) = _$_AryLanguage;

  factory _AryLanguage.fromJson(Map<String, dynamic> json) =
      _$_AryLanguage.fromJson;

  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get nameJa => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AryLanguageCopyWith<_$_AryLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthDto _$AuthDtoFromJson(Map<String, dynamic> json) {
  return _AuthDto.fromJson(json);
}

/// @nodoc
mixin _$AuthDto {
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'expire_at')
  int get expireAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDtoCopyWith<AuthDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDtoCopyWith<$Res> {
  factory $AuthDtoCopyWith(AuthDto value, $Res Function(AuthDto) then) =
      _$AuthDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'expire_at') int expireAt,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class _$AuthDtoCopyWithImpl<$Res> implements $AuthDtoCopyWith<$Res> {
  _$AuthDtoCopyWithImpl(this._value, this._then);

  final AuthDto _value;
  // ignore: unused_field
  final $Res Function(AuthDto) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? expireAt = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: expireAt == freezed
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthDtoCopyWith<$Res> implements $AuthDtoCopyWith<$Res> {
  factory _$$_AuthDtoCopyWith(
          _$_AuthDto value, $Res Function(_$_AuthDto) then) =
      __$$_AuthDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'access_token') String accessToken,
      @JsonKey(name: 'expire_at') int expireAt,
      @JsonKey(name: 'refresh_token') String refreshToken});
}

/// @nodoc
class __$$_AuthDtoCopyWithImpl<$Res> extends _$AuthDtoCopyWithImpl<$Res>
    implements _$$_AuthDtoCopyWith<$Res> {
  __$$_AuthDtoCopyWithImpl(_$_AuthDto _value, $Res Function(_$_AuthDto) _then)
      : super(_value, (v) => _then(v as _$_AuthDto));

  @override
  _$_AuthDto get _value => super._value as _$_AuthDto;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? expireAt = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$_AuthDto(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expireAt: expireAt == freezed
          ? _value.expireAt
          : expireAt // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthDto implements _AuthDto {
  const _$_AuthDto(
      {@JsonKey(name: 'access_token') required this.accessToken,
      @JsonKey(name: 'expire_at') required this.expireAt,
      @JsonKey(name: 'refresh_token') required this.refreshToken});

  factory _$_AuthDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthDtoFromJson(json);

  @override
  @JsonKey(name: 'access_token')
  final String accessToken;
  @override
  @JsonKey(name: 'expire_at')
  final int expireAt;
  @override
  @JsonKey(name: 'refresh_token')
  final String refreshToken;

  @override
  String toString() {
    return 'AuthDto(accessToken: $accessToken, expireAt: $expireAt, refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthDto &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality().equals(other.expireAt, expireAt) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(expireAt),
      const DeepCollectionEquality().hash(refreshToken));

  @JsonKey(ignore: true)
  @override
  _$$_AuthDtoCopyWith<_$_AuthDto> get copyWith =>
      __$$_AuthDtoCopyWithImpl<_$_AuthDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthDtoToJson(this);
  }
}

abstract class _AuthDto implements AuthDto {
  const factory _AuthDto(
          {@JsonKey(name: 'access_token') required final String accessToken,
          @JsonKey(name: 'expire_at') required final int expireAt,
          @JsonKey(name: 'refresh_token') required final String refreshToken}) =
      _$_AuthDto;

  factory _AuthDto.fromJson(Map<String, dynamic> json) = _$_AuthDto.fromJson;

  @override
  @JsonKey(name: 'access_token')
  String get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'expire_at')
  int get expireAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'refresh_token')
  String get refreshToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthDtoCopyWith<_$_AuthDto> get copyWith =>
      throw _privateConstructorUsedError;
}

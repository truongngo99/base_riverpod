// To parse this JSON data, do
//
//     final authDto = authDtoFromMap(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';
part 'auth_dto.g.dart';

@freezed
class AuthDto with _$AuthDto {
  const factory AuthDto({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'expire_at') required int expireAt,
    @JsonKey(name: 'refresh_token') required String refreshToken,
  }) = _AuthDto;

  factory AuthDto.fromJson(Map<String, dynamic> json) =>
      _$AuthDtoFromJson(json);
}

// To parse this JSON data, do
//
//     final authResponse = authResponseFromJson(jsonString);

import 'dart:convert';

AuthResponse authResponseFromJson(String str) => AuthResponse.fromJson(json.decode(str));

String authResponseToJson(AuthResponse data) => json.encode(data.toJson());

class AuthResponse {
    AuthResponse({
        required this.data,
        required this.message,
    });

    Data data;
    String message;

    factory AuthResponse.fromJson(Map<String, dynamic> json) => AuthResponse(
        data: Data.fromJson(json["data"]),
        message: json["message"],
    );

    Map<String, dynamic> toJson() => {
        "data": data.toJson(),
        "message": message,
    };
}

class Data {
    Data({
        required this.accessToken,
        required this.refreshToken,
        required this.expireAt,
    });

    String accessToken;
    String refreshToken;
    int expireAt;

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        accessToken: json["access_token"],
        refreshToken: json["refresh_token"],
        expireAt: json["expire_at"],
    );

    Map<String, dynamic> toJson() => {
        "access_token": accessToken,
        "refresh_token": refreshToken,
        "expire_at": expireAt,
    };
}

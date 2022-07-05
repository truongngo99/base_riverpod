// To parse this JSON data, do
//
//     final authModel = authModelFromJson(jsonString);

import 'dart:convert';

class AuthModelStorage {
  AuthModelStorage({
    required this.isLoading,
    required this.isLoggedIn,
    required this.isLogging,
    required this.accessToken,
    required this.refreshToken,
    required this.userData,
    required this.redirectUrl,
    required this.expiredAt,
    required this.duration,
  });

  final bool isLoading;
  final bool isLoggedIn;
  final bool isLogging;
  final String accessToken;
  final String refreshToken;
  final UserData? userData;
  final String redirectUrl;
  final int expiredAt;
  final int duration;

  // AuthModel copyWith({
  //   bool isLoading,
  //   bool isLoggedIn,
  //   bool isLogging,
  //   String accessToken,
  //   String refreshToken,
  //   UserData userData,
  //   String redirectUrl,
  //   int expiredAt,
  //   int duration,
  // }) =>
  //     AuthModel(
  //       isLoading: isLoading ?? this.isLoading,
  //       isLoggedIn: isLoggedIn ?? this.isLoggedIn,
  //       isLogging: isLogging ?? this.isLogging,
  //       accessToken: accessToken ?? this.accessToken,
  //       refreshToken: refreshToken ?? this.refreshToken,
  //       userData: userData ?? this.userData,
  //       redirectUrl: redirectUrl ?? this.redirectUrl,
  //       expiredAt: expiredAt ?? this.expiredAt,
  //       duration: duration ?? this.duration,
  //     );

  factory AuthModelStorage.fromRawJson(String str) =>
      AuthModelStorage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuthModelStorage.fromJson(Map<String, dynamic> json) =>
      AuthModelStorage(
        isLoading: json["isLoading"],
        isLoggedIn: json["isLoggedIn"],
        isLogging: json["isLogging"],
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
        userData: json["userData"] != null
            ? UserData.fromJson(json["userData"])
            : null,
        redirectUrl: json["redirectUrl"],
        expiredAt: json["expiredAt"],
        duration: json["duration"],
      );

  Map<String, dynamic> toJson() => {
        "isLoading": isLoading,
        "isLoggedIn": isLoggedIn,
        "isLogging": isLogging,
        "accessToken": accessToken,
        "refreshToken": refreshToken,
        "userData": userData?.toJson(),
        "redirectUrl": redirectUrl,
        "expiredAt": expiredAt,
        "duration": duration,
      };
}

class UserData {
  UserData({
    required this.username,
    required this.avatarUrl,
    required this.name,
    required this.primaryLanguage,
    required this.secondaryLanguage,
  });

  final String username;
  final dynamic avatarUrl;
  final String name;
  final AryLanguage primaryLanguage;
  final AryLanguage secondaryLanguage;

  // UserData copyWith({
  //   String username,
  //   dynamic avatarUrl,
  //   String name,
  //   AryLanguage primaryLanguage,
  //   AryLanguage secondaryLanguage,
  // }) =>
  //     UserData(
  //       username: username ?? this.username,
  //       avatarUrl: avatarUrl ?? this.avatarUrl,
  //       name: name ?? this.name,
  //       primaryLanguage: primaryLanguage ?? this.primaryLanguage,
  //       secondaryLanguage: secondaryLanguage ?? this.secondaryLanguage,
  //     );

  factory UserData.fromRawJson(String str) =>
      UserData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        username: json["username"],
        avatarUrl: json["avatar_url"],
        name: json["name"],
        primaryLanguage: AryLanguage.fromJson(json["primaryLanguage"]),
        secondaryLanguage: AryLanguage.fromJson(json["secondaryLanguage"]),
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "avatar_url": avatarUrl,
        "name": name,
        "primaryLanguage": primaryLanguage.toJson(),
        "secondaryLanguage": secondaryLanguage.toJson(),
      };
}

class AryLanguage {
  AryLanguage({
    required this.code,
    required this.name,
    required this.nameJa,
  });

  final String code;
  final String name;
  final String nameJa;

  // AryLanguage copyWith({
  //   String code,
  //   String name,
  //   String nameJa,
  // }) =>
  //     AryLanguage(
  //       code: code ?? this.code,
  //       name: name ?? this.name,
  //       nameJa: nameJa ?? this.nameJa,
  //     );

  factory AryLanguage.fromRawJson(String str) =>
      AryLanguage.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AryLanguage.fromJson(Map<String, dynamic> json) => AryLanguage(
        code: json["code"],
        name: json["name"],
        nameJa: json["name_ja"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "name": name,
        "name_ja": nameJa,
      };
}

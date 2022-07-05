class SettingModel {
  final String webUrl;
  final String username;
  final String password;
  final String apiEndpoint;

  SettingModel({
    required this.webUrl,
    required this.username,
    required this.password,
    required this.apiEndpoint,
  });

  SettingModel copyWith({
    String? webUrl,
    String? username,
    String? password,
    String? apiEndpoint,
  }) =>
      SettingModel(
        webUrl: webUrl ?? this.webUrl,
        username: username ?? this.username,
        password: password ?? this.password,
        apiEndpoint: apiEndpoint ?? this.apiEndpoint,
      );
}

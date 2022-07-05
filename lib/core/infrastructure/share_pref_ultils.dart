
import 'package:injectable/injectable.dart';

import '../../dev_helper/domain/setting_model.dart';
import '../../infrastructure/dto/auth_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

@singleton
class SharePrefUtils {
  late SharedPreferences _pref;
  final keyWebURL = 'web_url';
  final keyUsername = 'username';
  final keyPassword = 'password';
  final keyAuthStorage = 'authStorage';
  final keyApiEndpoint = 'apiEndpoint';

  Future<void> init() async {
    _pref = await SharedPreferences.getInstance();
  }

  String get webUrl =>
      _pref.getString(keyWebURL) ?? 'https://app.dev.guide-navi.com/';
  // String get webUrl => _pref.getString(keyWebURL) ?? 'https://app.gnavi.tk/';

  set webUrl(String value) {
    _pref.setString(keyWebURL, value);
  }

  String get username => _pref.getString(keyUsername) ?? 'guide_navi';

  set username(String value) {
    _pref.setString(keyUsername, value);
  }

  String get password => _pref.getString(keyPassword) ?? 'guideNavi2022';

  set password(String value) {
    _pref.setString(keyPassword, value);
  }

  String get apiEndpoint =>
      _pref.getString(keyApiEndpoint) ?? 'https://api.dev.guide-navi.com/';

  set apiEndpoint(String value) {
    _pref.setString(keyApiEndpoint, value);
  }

  SettingModel getSettings() {
    return SettingModel(
      webUrl: webUrl,
      username: username,
      password: password,
      apiEndpoint: apiEndpoint,
    );
  }

  Future<void> updateSetting(
      String webUrl, String username, String password) async {
    await _pref.setString(keyWebURL, webUrl);
    await _pref.setString(keyUsername, username);
    await _pref.setString(keyPassword, password);
  }

  AuthModelStorage? get authModelStorage {
    var strAuthModel = _pref.getString(keyAuthStorage);
    return strAuthModel != null
        ? AuthModelStorage.fromRawJson(strAuthModel)
        : null;
  }

  set authModelStorage(AuthModelStorage? authModelStorage) {
    if (authModelStorage != null) {
      _pref.setString(keyAuthStorage, authModelStorage.toRawJson());
    }
  }
}

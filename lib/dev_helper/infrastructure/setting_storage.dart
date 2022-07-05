import '../../core/infrastructure/share_pref_ultils.dart';
import '../domain/setting_model.dart';

class SettingStorage {
  final SharePrefUtils _prefUtils;

  SettingStorage(this._prefUtils);

  SettingModel loadSetting() {
    return _prefUtils.getSettings();
  }

  Future<void> updateSetting(
      String webUrl, String username, String password) async {
    await _prefUtils.updateSetting(webUrl, username, password);
    // settings = settings.copyWith(
    //     webUrl: webUrl, username: username, password: password);
    // notifyListeners();
  }
}

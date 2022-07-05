import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/setting_model.dart';
import '../infrastructure/setting_storage.dart';

part 'dev_helper_notifer.freezed.dart';

@freezed
class DevHelperState with _$DevHelperState {
  const DevHelperState._();
  const factory DevHelperState.initial() = _Initial;
  const factory DevHelperState.loadedDevHelper({
    required SettingModel settingModel,
  }) = _LoadedDevHelper;
  const factory DevHelperState.loadFailure() = _LoadFailure;
}

class DevHelperNotifier extends StateNotifier<DevHelperState> {
  final SettingStorage _settingStorage;
  DevHelperNotifier(this._settingStorage)
      : super(const DevHelperState.initial());

  void getSettings() {
    final settingModel = _settingStorage.loadSetting();
    state = DevHelperState.loadedDevHelper(settingModel: settingModel);
  }

  bool updateSettings(
      String webUrl, String username, String password, String apiEndpoint) {
    _settingStorage.updateSetting(webUrl, username, password);
    state = DevHelperState.loadedDevHelper(
        settingModel: SettingModel(
      webUrl: webUrl,
      username: username,
      password: password,
      apiEndpoint: apiEndpoint,
    ));
    return true;
  }
}

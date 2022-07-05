import 'package:base_riverpod/injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/infrastructure/share_pref_ultils.dart';
import '../application/dev_helper_notifer.dart';
import '../infrastructure/setting_storage.dart';

final settingStorageProvider = Provider<SettingStorage>((ref) {
  return SettingStorage(getIt<SharePrefUtils>());
});

final devHelperStateProvider =
    StateNotifierProvider<DevHelperNotifier, DevHelperState>((ref) {
  return DevHelperNotifier(ref.watch(settingStorageProvider));
});

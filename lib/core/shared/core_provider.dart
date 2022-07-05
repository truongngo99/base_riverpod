import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

import '../../dev_helper/shared/dev_helper_providers.dart';

final dioProvider = Provider(
  ((ref) {
    final settings = ref.watch(settingStorageProvider).loadSetting();
    final dio = Dio(
      BaseOptions(baseUrl: settings.apiEndpoint),
    );
    return dio;
  }),
);

import 'package:base_riverpod/infrastructure/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';

import '../../auth/shared/auth_provider.dart';
import '../../dev_helper/shared/dev_helper_providers.dart';

final dioProvider = Provider(
  ((ref) {
    final settings = ref.watch(settingStorageProvider).loadSetting();
    final dio = Dio(
      BaseOptions(baseUrl: settings.apiEndpoint),
    );
    dio.interceptors.add(ref.watch(oAuthInterceptorProvider));
    dio.interceptors.add(ref.watch(loggerInterceptorProvider));
    return dio;
  }),
);

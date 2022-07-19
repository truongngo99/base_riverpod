import 'package:base_riverpod/core/infrastructure/share_pref_ultils.dart';
import 'package:base_riverpod/dev_helper/shared/dev_helper_providers.dart';
import 'package:base_riverpod/infrastructure/auth_interceptor.dart';
import 'package:base_riverpod/infrastructure/auth_remote_service.dart';
import 'package:base_riverpod/infrastructure/authenticator.dart';
import 'package:base_riverpod/infrastructure/basic_authen_interceptor.dart';
import 'package:base_riverpod/injection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../application/auth_notifier.dart';

final dioForAuthProvider = Provider<Dio>((ref) {
  var settings = ref.watch(settingStorageProvider).loadSetting();
  final dioForAuth = Dio(
    BaseOptions(
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      baseUrl: settings.apiEndpoint,
    ),
  );
  dioForAuth.interceptors.add(BasicAuthenInterceptor(settings));
  return dioForAuth;
});

final authRemoteServiceProvider = Provider<AuthRemoteService>((ref) {
  return AuthRemoteService(ref.watch(dioForAuthProvider));
});

final loggerInterceptorProvider = Provider<LogInterceptor>((ref) {
  return LogInterceptor(
    responseBody: true,
    requestBody: true,
  );
});

final oAuthInterceptorProvider = Provider(
  (ref) => AuthInterceptor(
    ref.watch(authenticatorProvider),
    ref.watch(authNotifierProvider.notifier),
    ref.watch(dioForAuthProvider),
  ),
);

final authenticatorProvider = Provider(
  (ref) {
    return Authenticator(ref.watch(authRemoteServiceProvider));
  },
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(authenticatorProvider),
     getIt<SharePrefUtils>()
  ),
);

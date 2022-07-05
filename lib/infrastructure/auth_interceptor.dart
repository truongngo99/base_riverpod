import 'package:base_riverpod/data/datasource/auth_remote_data_source.dart';
import 'package:dio/dio.dart';

import '../auth/application/auth_notifier.dart';
import 'authenticator.dart';

class AuthInterceptor extends Interceptor {
  final Authenticator _authenticator;
  final AuthNotifier _authNotifier;
  final Dio _dio;
  AuthInterceptor(this._authenticator, this._authNotifier, this._dio);

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final authDto = await _authenticator.getSignedInAuth();
    final modifiedOptions = options
      ..headers.addAll(authDto == null
          ? {}
          : {
              'Authorization': 'Bearer ${authDto.accessToken}',
            });
    handler.next(modifiedOptions);
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    final errResponse = err.response;
    if (errResponse != null && errResponse.statusCode == 401) {
      // get & update new token from web
      final failureOrSuccess = await _authenticator.getNewTokenFromWeb();
      // check and noti UI logged in or signed out if get new token is failed
      // await _authNotifier.checkAndUpdateAuthStatus();
      failureOrSuccess.fold(
        (l) => () {
          handler.next(err);
        },
        (r) => () async {
          final authModelStorage = await _authenticator.getSignedInAuth();
          if (authModelStorage != null) {
            _authNotifier.updateAuthentication(authModelStorage);
            handler.resolve(
              await _dio.fetch(
                err.requestOptions
                  ..headers['Authorization'] =
                      'bearer ${authModelStorage.accessToken}',
              ),
            );
          }
        },
      );
    } else {
      handler.next(err);
    }
  }
}

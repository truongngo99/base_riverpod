import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final String idToken;

  AuthInterceptor(this.idToken);
  @override
  Future onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Content-Type'] = 'application/json';
    options.headers['Accept'] = 'application/json';
    options.headers['Access-Control-Allow-Origin'] = '*';
    options.headers['Authorization'] = 'Bearer $idToken';

    return super.onRequest(options, handler);
  }
}

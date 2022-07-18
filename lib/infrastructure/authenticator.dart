import 'package:base_riverpod/auth/domain/auth_failure.dart';
import 'package:base_riverpod/data/datasource/profile_remote_data_source.dart';
import 'package:base_riverpod/infrastructure/auth_remote_service.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';


import '../core/infrastructure/network_exception.dart';
import 'dto/auth_dto.dart';

class Authenticator {
  final AuthRemoteService _authRemoteService;

  Authenticator(this._authRemoteService);

  AuthDto? _cacheAuthDto;

  Future<AuthDto?> getSignedInAuth() async {
    try {
      return _cacheAuthDto;
    } on PlatformException {
      return null;
    }
  }

  Future<void> clearSession() async {
     _cacheAuthDto = null;
     print("session cleared");
  }

  Future<bool> isSignedIn() =>
      getSignedInAuth().then((authDto) => authDto != null);

  Future<Either<AuthFailure, AuthDto>> handleSignIn(
      String email, String password) async {
    try {
      final remoteRes = await _authRemoteService.signIn(email, password);
      return remoteRes.when(
        noConnection: () => left(const AuthFailure.server()),
        success: (data) {
          _cacheAuthDto = data;
          return right(data);
        },
      );
    } on RestApiException catch (e) {
      return left(AuthFailure.server('ErrorCode: ${e.errorCode}'));
    } catch (e) {
      return left(AuthFailure.server(e.toString()));
    }
  }

  updateAuthDto(AuthDto authDto) {
    _cacheAuthDto = authDto;
  }

  Future<Either<AuthFailure, Unit>> signInFromWeb(dynamic datastorage) async {
    return left(const AuthFailure.webView());
  }

  Future<Either<AuthFailure, String>> signOut(String refreshToken) async {
     try {
      final remoteRes = await _authRemoteService.signOut(_cacheAuthDto?.accessToken ?? "", refreshToken);
      return remoteRes.when(
        noConnection: () => left(const AuthFailure.server()),
        success: (data) async {
          await clearSession();
          return right(data);
        },
      );
    } on RestApiException catch (e) {
      print("vao restapi roi");
      return left(AuthFailure.server('ErrorCode: ${e.errorCode}'));
    } catch (e) {
      print("vao e roi");
      return left(AuthFailure.server(e.toString()));
    }
  }

  Future<Either<AuthFailure, Unit>> getNewTokenFromWeb() async {
    // TODO getNewTokenFromWeb
    return left(const AuthFailure.webView());
  }
}

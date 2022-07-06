// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:base_riverpod/auth/domain/auth_failure.dart';
import 'package:base_riverpod/core/infrastructure/share_pref_ultils.dart';
import 'package:base_riverpod/infrastructure/dto/auth_dto.dart';
import 'package:base_riverpod/infrastructure/dto/auth_model.dart';

import '../../infrastructure/authenticator.dart';

part 'auth_notifier.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.authenticated(AuthDto authDto) = _Authenticated;
  const factory AuthState.failure(AuthFailure failure) = _Failure;
}

typedef AuthUriCallback = Future<Uri> Function(Uri authorizationUrl);

class AuthNotifier extends StateNotifier<AuthState> {
  final Authenticator _authenticator;
  final SharePrefUtils userDefault;

  AuthNotifier(
    this._authenticator,
    this.userDefault,
  ) : super(const AuthState.initial());

  // Future<void> checkAndUpdateAuthStatus() async {
  //   state = (await _authenticator.isSignedIn())
  //       ? const AuthState.authenticated()
  //       : const AuthState.unauthenticated();
  // }

  void updateAuthentication(AuthDto authDto) {
    _authenticator.updateAuthDto(authDto);
    state = AuthState.authenticated(authDto);
  }

  void updateAuthenticationFromLocalStorage(AuthModelStorage authModel) {
    final authDto = AuthDto(
      accessToken: authModel.accessToken,
      expireAt: authModel.expiredAt,
      refreshToken: authModel.refreshToken,
    );
    updateAuthentication(authDto);
  }

  void updateAuthDto(AuthDto authDto) {
    _authenticator.updateAuthDto(authDto);
    // state = AuthState.authenticated(authDto);
  }

  Future<void> signIn(String email, String password) async {
    final failureOrSuccess = await _authenticator.handleSignIn(email, password);

    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (authDto) => AuthState.authenticated(authDto),
    );
  }

  Future<void> signOut() async {
    final failureOrSuccess = await _authenticator.signOut();
    state = failureOrSuccess.fold(
      (l) => AuthState.failure(l),
      (r) => const AuthState.unauthenticated(),
    );
  }
}

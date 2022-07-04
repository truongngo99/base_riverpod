// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/core/utils/state_enum.dart';
import 'package:flutter/material.dart';

import 'package:base_riverpod/domain/repositories/auth_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginNotifier extends ChangeNotifier {
  final AuthRepository repo;

  LoginNotifier({
    required this.repo,
  });

  RequestState _loginState = RequestState.empty;
  RequestState get loginState => _loginState;

  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;

  Future<void> login(String email, String password) async {
    final loginResult = await repo.login(email, password);
    _loginState = RequestState.loading;

    loginResult.fold((failure) {
      _loginState = RequestState.error;
      // ignore: avoid_print
      print("login fail");
      notifyListeners();
    }, (result) {
      _loginState = RequestState.loaded;
      _isLoggedIn = true;
      notifyListeners();
    });
  }
}

final loginNotifierProvider = ChangeNotifierProvider<LoginNotifier>((ref) {
  final repo = ref.watch(authRespository);
  return LoginNotifier(repo: repo);
});
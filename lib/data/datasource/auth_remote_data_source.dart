// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:base_riverpod/core/utils/exception.dart';
import 'package:base_riverpod/core/utils/urls.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

import 'package:base_riverpod/domain/entity/auth_response.dart';

abstract class AuthRemoteDataSource {
  Future<AuthResponse> login(String email, String password);
  Future<void> logout(String refreshToken, String username, String birthday);
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final http.Client client;

  AuthRemoteDataSourceImpl({
    required this.client,
  });
  
  @override
  Future<AuthResponse> login(String email, String password) async {
    Map<String, String> bodyData = {
      "email": email,
      "password": password
    };
    final response = await client.post(Uri.parse(Urls.login), headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    }, body: jsonEncode(bodyData));
    
    if (response.statusCode == 200) {
      return AuthResponse.fromJson(json.decode(response.body));
    } else {
      // ignore: avoid_print
      throw ServerException();
    }
  }
  
  @override
  Future<void> logout(String refreshToken, String username, String birthday) async {
    Map<String, String> bodyData = {
      "refresh_token": refreshToken,
      "name": username,
      "birthday": birthday
    };
    final response = await client.delete(Uri.parse(Urls.login), headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    }, body: jsonEncode(bodyData));
    
    if (response.statusCode == 200) {
      return;
    } else {
      // ignore: avoid_print
      throw ServerException();
    }
  }
}

final Provider authDatasourceProvider = Provider<AuthRemoteDataSourceImpl>((ref) {
  return AuthRemoteDataSourceImpl(client: http.Client());
});
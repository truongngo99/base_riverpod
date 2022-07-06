// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/auth/shared/auth_provider.dart';
import 'package:base_riverpod/core/shared/core_provider.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:base_riverpod/core/utils/exception.dart';
import 'package:base_riverpod/core/utils/urls.dart';
import 'package:base_riverpod/domain/entity/general_info_response.dart';
import 'package:base_riverpod/domain/entity/guide_user_info.dart';
import 'package:base_riverpod/domain/entity/skill_response.dart';
import 'package:base_riverpod/domain/entity/user_info.dart';

abstract class ProfileRemoteDataSource {
    Future<UserInfoResponse> fetchUserInfo();
    Future<GuideUserInfoResponse> fetchGuideUserInfo(String username);
    Future<GeneralInfoResponse> fetchGeneralInfo(String username);
    Future<SkillResponse> fetchSkill();
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final Dio _dio;

  ProfileRemoteDataSourceImpl(
    this._dio,
  );

  @override
  Future<GeneralInfoResponse> fetchGeneralInfo(String username) async {
    final response = await _dio.get('api/v1/guides/$username/general_info');
    if (response.statusCode == 200) {
      print("ok con de ${response.data}");
      return GeneralInfoResponse.fromJson((response.data));
    } else {
            print("vcl roi ${response.data}");
      throw ServerException();
    }
  }
  
  @override
  Future<SkillResponse> fetchSkill() async {
     final response = await _dio.get(Urls.skills);
    if (response.statusCode == 200) {
      return SkillResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
  
  @override
  Future<UserInfoResponse> fetchUserInfo() async {
    final response = await _dio.get(Urls.userInfo);
    if (response.statusCode == 200) {
      return UserInfoResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
  
  @override
  Future<GuideUserInfoResponse> fetchGuideUserInfo(String username) async {
    final response = await _dio.get(Urls.guideUserInfo);
    if (response.statusCode == 200) {
      return GuideUserInfoResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}

final Provider profileDatasourceProvider = Provider<ProfileRemoteDataSourceImpl>((ref) {
  return ProfileRemoteDataSourceImpl(ref.watch(dioProvider));
});
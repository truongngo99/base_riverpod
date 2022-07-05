// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:base_riverpod/core/utils/exception.dart';
import 'package:base_riverpod/core/utils/urls.dart';
import 'package:base_riverpod/domain/entity/general_info_response.dart';
import 'package:base_riverpod/domain/entity/guide_user_info.dart';
import 'package:base_riverpod/domain/entity/skill_response.dart';
import 'package:base_riverpod/domain/entity/user_info.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ProfileRemoteDataSource {
    Future<UserInfoResponse> fetchUserInfo();
    Future<GuideUserInfoResponse> fetchGuideUserInfo();
    Future<GeneralInfoResponse> fetchGeneralInfo();
    Future<SkillResponse> fetchSkill();
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final _dio = Dio();

  @override
  Future<GeneralInfoResponse> fetchGeneralInfo() async {
    final response = await _dio.get(Urls.generalInfo);
    if (response.statusCode == 200) {
      return GeneralInfoResponse.fromJson(response.data);
    } else {
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
  Future<GuideUserInfoResponse> fetchGuideUserInfo() async {
    final response = await _dio.get(Urls.guideUserInfo);
    if (response.statusCode == 200) {
      return GuideUserInfoResponse.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}

final Provider profileDatasourceProvider = Provider<ProfileRemoteDataSourceImpl>((ref) {
  return ProfileRemoteDataSourceImpl();
});
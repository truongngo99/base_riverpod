// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:base_riverpod/auth/shared/auth_provider.dart';
import 'package:base_riverpod/core/shared/core_provider.dart';
import 'package:base_riverpod/domain/entity/activities_response.dart';
import 'package:base_riverpod/domain/entity/album_response.dart';
import 'package:base_riverpod/domain/entity/guide_info_response.dart';
import 'package:base_riverpod/domain/entity/map_pin_response.dart';
import 'package:base_riverpod/domain/entity/media_response.dart';
import 'package:base_riverpod/domain/entity/top_profile_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:base_riverpod/core/utils/exception.dart';
import 'package:base_riverpod/core/utils/urls.dart';
import 'package:base_riverpod/domain/entity/general_info_response.dart';
import 'package:base_riverpod/domain/entity/guide_user_info.dart';
import 'package:base_riverpod/domain/entity/skill_response.dart';
import 'package:base_riverpod/domain/entity/user_info.dart';

/// guides/me -> GuideInfoData
/// accounts/me -> UserInfoData
/// guides/$username/info  -> GuideUserInfoData
/// guides/$username/general_info -> GeneralInfoData

abstract class ProfileRemoteDataSource {
  Future<GuideInfoData> fetchGuideInfo();
  Future<UserInfoData> fetchUserInfo();
  Future<GuideUserInfoData> fetchGuideUserInfo(String username);
  Future<GeneralInfoData> fetchGeneralInfo(String username);
  Future<SkillData> fetchSkill(String username);
  Future<TopProfileData> fetchTopProfile();
  Future<List<TravelSpotData>> fetchMapPin(String username);
  Future<List<MediaData>> fetchMedia(String username);
  Future<List<AlbumData>> fetchAlbum(String username);
  Future<List<ActivitiesData>> fetchActivities(String username);
}

class ProfileRemoteDataSourceImpl implements ProfileRemoteDataSource {
  final Dio _dio;

  ProfileRemoteDataSourceImpl(
    this._dio,
  );

  @override
  Future<GeneralInfoData> fetchGeneralInfo(String username) async {
    final response = await _dio.get('api/v1/guides/$username/general_info');
    if (response.statusCode == 200) {
      return GeneralInfoData.fromJson((response.data["data"]));
    } else {
      throw ServerException();
    }
  }

  @override
  Future<SkillData> fetchSkill(String username) async {
    final response = await _dio.get("api/v1/guides/$username/skills");
    if (response.statusCode == 200) {
      return SkillData.fromJson(response.data["data"]);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<UserInfoData> fetchUserInfo() async {
    final response = await _dio.get("api/v1/accounts/me");
    if (response.statusCode == 200) {
      return UserInfoData.fromJson(response.data["data"]);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<GuideUserInfoData> fetchGuideUserInfo(String username) async {
    final response = await _dio.get("api/v1/guides/$username/info");

    if (response.statusCode == 200) {
      return GuideUserInfoData.fromJson(response.data["data"]);
    } else {
      throw ServerException();
    }
  }

  @override
  Future<GuideInfoData> fetchGuideInfo() async {
    final response = await _dio.get('api/v1/guides/me');
    if (response.statusCode == 200) {
      return GuideInfoData.fromJson((response.data["data"]));
    } else {
      throw ServerException();
    }
  }

  @override
  Future<TopProfileData> fetchTopProfile() async {
    final response = await _dio.get('api/v1/guides/me?top_profile=true');
    if (response.statusCode == 200) {
      return TopProfileData.fromJson((response.data["data"]));
    } else {
      throw ServerException();
    }
  }

  @override
  Future<List<TravelSpotData>> fetchMapPin(String username) async {
    final response = await _dio.get("api/v1/guides/$username/destinations");

    if (response.statusCode == 200) {
      return TravelSpotResponse.fromJson(response.data).data;
    } else {
      throw ServerException();
    }
  }
  
  @override
  Future<List<AlbumData>> fetchAlbum(String username) async {
     final response = await _dio.get("api/v1/guides/$username/albums");

    if (response.statusCode == 200) {
      return AlbumReponse.fromJson(response.data).data;
    } else {
      throw ServerException();
    }
  }
  
  @override
  Future<List<MediaData>> fetchMedia(String username) async {
     final response = await _dio.get("api/v1/guides/$username/media");

    if (response.statusCode == 200) {
      return MediaReponse.fromJson(response.data).data;
    } else {
      throw ServerException();
    }
  }
  
  @override
  Future<List<ActivitiesData>> fetchActivities(String username) async {
     final response = await _dio.get("api/v1/guides/$username/activities");

    if (response.statusCode == 200) {
      return ActivitiesReponse.fromJson(response.data).data;
    } else {
      throw ServerException();
    }
  }
}

final Provider profileDatasourceProvider =
    Provider<ProfileRemoteDataSourceImpl>((ref) {
  return ProfileRemoteDataSourceImpl(ref.watch(dioProvider));
});

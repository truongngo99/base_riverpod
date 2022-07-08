import 'package:base_riverpod/core/utils/failure.dart';
import 'package:base_riverpod/data/datasource/profile_remote_data_source.dart';
import 'package:base_riverpod/data/respositories/profile_respository_impl.dart';
import 'package:base_riverpod/domain/entity/album_response.dart';
import 'package:base_riverpod/domain/entity/general_info_response.dart';
import 'package:base_riverpod/domain/entity/guide_info_response.dart';
import 'package:base_riverpod/domain/entity/guide_user_info.dart';
import 'package:base_riverpod/domain/entity/map_pin_response.dart';
import 'package:base_riverpod/domain/entity/media_response.dart';
import 'package:base_riverpod/domain/entity/skill_response.dart';
import 'package:base_riverpod/domain/entity/top_profile_response.dart';
import 'package:base_riverpod/domain/entity/user_info.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// guides/me -> GuideInfoData
/// accounts/me -> UserInfoData
/// guides/$username/info  -> GuideUserInfoData
/// guides/$username/general_info -> GeneralInfoData

abstract class ProfileRepository {
  Future<Either<Failure, GeneralInfoData>> fetchGeneralInfo(String username);
  Future<Either<Failure, UserInfoData>> fetchUserInfo();
  Future<Either<Failure, TopProfileData>> fetchTopProfile();
  Future<Either<Failure, SkillData>> fetchSkill(String username);
  Future<Either<Failure, GuideUserInfoData>> fetchGuideUserInfo(
      String username);
  Future<Either<Failure, GuideInfoData>> fetchGuideInfo();
  Future<Either<Failure, List<TravelSpotData>>> fetchMapPin(String username);
  Future<Either<Failure, List<MediaData>>> fetchMedia(String username);
  Future<Either<Failure, List<AlbumData>>> fetchAlbum(String username);
}

final Provider profileRespository = Provider<ProfileRespositoryImpl>((ref) {
  final remoteDataSource = ref.watch(profileDatasourceProvider);
  return ProfileRespositoryImpl(remoteDataSource: remoteDataSource);
});

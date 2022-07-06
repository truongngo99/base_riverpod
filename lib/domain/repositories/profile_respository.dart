import 'package:base_riverpod/core/utils/failure.dart';
import 'package:base_riverpod/data/datasource/profile_remote_data_source.dart';
import 'package:base_riverpod/data/respositories/profile_respository_impl.dart';
import 'package:base_riverpod/domain/entity/general_info_response.dart';
import 'package:base_riverpod/domain/entity/guide_user_info.dart';
import 'package:base_riverpod/domain/entity/skill_response.dart';
import 'package:base_riverpod/domain/entity/user_info.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

abstract class ProfileRepository {
  Future<Either<Failure, GeneralInfoResponse>> fetchGeneralInfo();
  Future<Either<Failure, UserInfoResponse>> fetchUserInfo();
  Future<Either<Failure, SkillResponse>> fetchSkillResponse();
  Future<Either<Failure, GuideUserInfoResponse>> fetchGuideUserInfo();
}

final Provider profileRespository = Provider<ProfileRespositoryImpl>((ref) {
  final remoteDataSource = ref.watch(profileDatasourceProvider);
  return ProfileRespositoryImpl(remoteDataSource: remoteDataSource);
});
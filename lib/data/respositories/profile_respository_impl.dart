import 'dart:io';

import 'package:base_riverpod/core/utils/exception.dart';
import 'package:base_riverpod/core/utils/failure.dart';
import 'package:base_riverpod/data/datasource/profile_remote_data_source.dart';
import 'package:base_riverpod/domain/entity/user_info.dart';
import 'package:base_riverpod/domain/entity/skill_response.dart';
import 'package:base_riverpod/domain/entity/guide_user_info.dart';
import 'package:base_riverpod/domain/entity/general_info_response.dart';
import 'package:base_riverpod/domain/repositories/profile_respository.dart';
import 'package:dartz/dartz.dart';

class ProfileRespositoryImpl implements ProfileRepository {
  final ProfileRemoteDataSource remoteDataSource;

  ProfileRespositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, GeneralInfoResponse>> fetchGeneralInfo() async {
     try {
      final result = await remoteDataSource.fetchGeneralInfo();
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, GuideUserInfoResponse>> fetchGuideUserInfo() async {
   try {
      final result = await remoteDataSource.fetchGuideUserInfo();
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, SkillResponse>> fetchSkillResponse() async {
    try {
      final result = await remoteDataSource.fetchSkill();
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, UserInfoResponse>> fetchUserInfo() async {
    try {
      final result = await remoteDataSource.fetchUserInfo();
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}

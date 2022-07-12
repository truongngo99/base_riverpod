import 'dart:io';

import 'package:base_riverpod/core/utils/exception.dart';
import 'package:base_riverpod/core/utils/failure.dart';
import 'package:base_riverpod/data/datasource/profile_remote_data_source.dart';
import 'package:base_riverpod/domain/entity/activities_response.dart';
import 'package:base_riverpod/domain/entity/album_response.dart';
import 'package:base_riverpod/domain/entity/guide_info_response.dart';
import 'package:base_riverpod/domain/entity/map_pin_response.dart';
import 'package:base_riverpod/domain/entity/media_response.dart';
import 'package:base_riverpod/domain/entity/top_profile_response.dart';
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
  Future<Either<Failure, GeneralInfoData>> fetchGeneralInfo(String username) async {
     try {
      final result = await remoteDataSource.fetchGeneralInfo(username);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, GuideUserInfoData>> fetchGuideUserInfo(String username) async {
   try {
      final result = await remoteDataSource.fetchGuideUserInfo(username);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, SkillData>> fetchSkill(String username) async {
    try {
      final result = await remoteDataSource.fetchSkill(username);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, UserInfoData>> fetchUserInfo() async {
    try {
      final result = await remoteDataSource.fetchUserInfo();
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, GuideInfoData>> fetchGuideInfo() async {
     try {
      final result = await remoteDataSource.fetchGuideInfo();
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, TopProfileData>> fetchTopProfile() async {
    try {
      final result = await remoteDataSource.fetchTopProfile();
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<TravelSpotData>>> fetchMapPin(String username) async {
    try {
      final result = await remoteDataSource.fetchMapPin(username);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<AlbumData>>> fetchAlbum(String username) async {
    try {
      final result = await remoteDataSource.fetchAlbum(username);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<MediaData>>> fetchMedia(String username) async {
    try {
      final result = await remoteDataSource.fetchMedia(username);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, List<ActivitiesData>>> fetchActivities(String username) async {
    try {
      final result = await remoteDataSource.fetchActivities(username);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}

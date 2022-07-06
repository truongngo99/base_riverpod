
import 'dart:io';

import 'package:base_riverpod/core/utils/exception.dart';
import 'package:base_riverpod/data/datasource/auth_remote_data_source.dart';
import 'package:base_riverpod/domain/entity/auth_response.dart';
import 'package:base_riverpod/core/utils/failure.dart';
import 'package:base_riverpod/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class AuthRespositoryImpl implements AuthRepository {
  final AuthRemoteDataSource guideNaviRemoteDataSource;

  AuthRespositoryImpl({required this.guideNaviRemoteDataSource});

  @override
  Future<Either<Failure, AuthResponse>> login(String email, String password) async {
    try {
      final result = await guideNaviRemoteDataSource.login(email, password);
      return Right(result);
    } on ServerException {
      return const Left(ServerFailure("abc"));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }
}

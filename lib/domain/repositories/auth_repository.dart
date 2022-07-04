import 'package:base_riverpod/data/datasource/remote_data_source.dart';
import 'package:base_riverpod/data/respositories/auth_respository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/failure.dart';
import '../entity/auth_response.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthResponse>> login(String email, String password);
}

final Provider authRespository = Provider<AuthRespositoryImpl>((ref) {
  final remoteDataSource = ref.watch(guideNaviDatasourceProvider);
  return AuthRespositoryImpl(guideNaviRemoteDataSource: remoteDataSource);
});
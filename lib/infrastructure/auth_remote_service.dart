import 'package:base_riverpod/core/infrastructure/dio_extension.dart';
import 'package:base_riverpod/core/infrastructure/network_exception.dart';
import 'package:base_riverpod/domain/entity/remote_response.dart';
import 'package:base_riverpod/infrastructure/dto/auth_dto.dart';
import 'package:dio/dio.dart';


class AuthRemoteService {
  final Dio _dio;

  AuthRemoteService(this._dio);

  Future<RemoteResponse<AuthDto>> signIn(String email, String password) async {
    try {
      final response = await _dio.post(
        '/api/v1/login',
        data: {
          'email': email,
          'password': password,
        },
      );
      if (response.statusCode == 200) {
        return RemoteResponse.success(AuthDto.fromJson(response.data['data']));
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(e.response!.statusCode);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }
   Future<RemoteResponse<String>> signOut(String refreshToken, String name, String birthday) async {
    try {
      final response = await _dio.delete(
        '/api/v1/logout',
        data: {
          'refresh_token': refreshToken,
          'name': name,
          'birthday': birthday
        },
      );
      if (response.statusCode == 200) {
        return RemoteResponse.success(response.data['message']);
      } else {
        throw RestApiException(response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw RestApiException(e.response!.statusCode);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

}

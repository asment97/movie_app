import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/core/models/request_token.dart';
import 'package:movie_app/core/network/apis/auth_api.dart';
import 'package:movie_app/core/network/dio_exception.dart';

final authRepositoryProvider =
    Provider<AuthRepository>((ref) => AuthRepository(ref));

class AuthRepository {
  final Ref ref;
  AuthRepository(this.ref);

  Future<RequestToken> getRequestToken() async {
    try {
      final response = await ref.read(authApiProvider).getRequestToken();

      return RequestToken.fromJson(response.data);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      log("getRequestToken", error: errorMessage);
      throw errorMessage;
    } catch (e, t) {
      log("getRequestToken", error: e, stackTrace: t);
      rethrow;
    }
  }

  Future<RequestToken> login(
      String username, String password, String token) async {
    try {
      final response =
          await ref.read(authApiProvider).login(username, password, token);

      return RequestToken.fromJson(response.data);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      log("login", error: errorMessage);
      throw errorMessage;
    } catch (e, t) {
      log("login", error: e, stackTrace: t);
      rethrow;
    }
  }
}

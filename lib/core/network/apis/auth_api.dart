import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/core/network/dio_client.dart';

final authApiProvider = Provider<AuthApi>((ref) => AuthApi(ref));

class AuthApi {
  final Ref ref;
  AuthApi(this.ref);

  Future<Response> getRequestToken() async {
    try {
      final Response response = await ref.read(dioClientProvider).get(
            "/authentication/token/new",
          );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> login(String username, String password, String token) async {
    try {
      final Response response = await ref.read(dioClientProvider).post(
        "/authentication/token/validate_with_login",
        data: {
          "username": username,
          "password": password,
          "request_token": token,
        },
      );

      return response;
    } catch (e) {
      rethrow;
    }
  }
}

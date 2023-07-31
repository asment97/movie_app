import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/core/network/dio_client.dart';

final movieApiProvider = Provider<MovieApi>((ref) => MovieApi(ref));

class MovieApi {
  final Ref ref;
  MovieApi(this.ref);

  Future<Response> fetchNowPlaying() async {
    try {
      final Response response = await ref.read(dioClientProvider).get(
            "/movie/now_playing",
          );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> fetchPopular() async {
    try {
      final Response response = await ref.read(dioClientProvider).get(
            "/movie/popular",
          );

      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> fetchTopRated() async {
    try {
      final Response response = await ref.read(dioClientProvider).get(
            "/movie/top_rated",
          );

      return response;
    } catch (e) {
      rethrow;
    }
  }
}

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/core/models/movie.dart';
import 'package:movie_app/core/models/response_data.dart';
import 'package:movie_app/core/network/apis/movie_api.dart';
import 'package:movie_app/core/network/dio_exception.dart';

final movieRepositoryProvider =
    Provider<MovieRepository>((ref) => MovieRepository(ref));

class MovieRepository {
  final Ref ref;
  MovieRepository(this.ref);

  Future<List<Movie>> fetchNowPlaying() async {
    try {
      final response = await ref.read(movieApiProvider).fetchNowPlaying();
      final responseData = ResponseData.fromJson(response.data);

      return (responseData.results as List<dynamic>)
          .map((point) => Movie.fromJson(point))
          .toList();
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      log("fetchNowPlaying", error: errorMessage);
      throw errorMessage;
    } catch (e, t) {
      log("fetchNowPlaying", error: e, stackTrace: t);
      rethrow;
    }
  }

  Future<List<Movie>> fetchPopular() async {
    try {
      final response = await ref.read(movieApiProvider).fetchPopular();
      final responseData = ResponseData.fromJson(response.data);

      return (responseData.results as List<dynamic>)
          .map((point) => Movie.fromJson(point))
          .toList();
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      log("fetchPopular", error: errorMessage);
      throw errorMessage;
    } catch (e, t) {
      log("fetchPopular", error: e, stackTrace: t);
      rethrow;
    }
  }

  Future<List<Movie>> fetchTopRated() async {
    try {
      final response = await ref.read(movieApiProvider).fetchTopRated();
      final responseData = ResponseData.fromJson(response.data);

      return (responseData.results as List<dynamic>)
          .map((point) => Movie.fromJson(point))
          .toList();
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      log("fetchTopRated", error: errorMessage);
      throw errorMessage;
    } catch (e, t) {
      log("fetchTopRated", error: e, stackTrace: t);
      rethrow;
    }
  }
}

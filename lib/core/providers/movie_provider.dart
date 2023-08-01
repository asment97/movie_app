import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/core/models/movie.dart';
import 'package:movie_app/core/models/movie_details.dart';
import 'package:movie_app/core/repositories/movie_repository.dart';

final nowPlayingMoviesProvider = FutureProvider.autoDispose<List<Movie>>(
  (ref) async {
    return await ref.watch(movieRepositoryProvider).fetchNowPlaying();
  },
);

final popularMoviesProvider = FutureProvider.autoDispose<List<Movie>>(
  (ref) async {
    return await ref.watch(movieRepositoryProvider).fetchPopular();
  },
);

final topRatedMoviesProvider = FutureProvider.autoDispose<List<Movie>>(
  (ref) async {
    return await ref.watch(movieRepositoryProvider).fetchTopRated();
  },
);

final movieDetailsProvider =
    FutureProvider.autoDispose.family<MovieDetails, int>(
  (ref, id) async {
    return await ref.watch(movieRepositoryProvider).fetchMovieDetails(id);
  },
);

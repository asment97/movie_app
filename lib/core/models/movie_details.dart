import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_app/core/models/genre.dart';

part 'movie_details.freezed.dart';
part 'movie_details.g.dart';

@freezed
class MovieDetails with _$MovieDetails {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieDetails({
    required bool adult,
    required String backdropPath,
    required List<Genre> genres,
    required String homepage,
    required int id,
    required String imdbId,
    required String originalLanguage,
    required String originalTitle,
    required String overview,
    required double popularity,
    required String posterPath,
    required String releaseDate,
    required int runtime,
    required String status,
    required String tagline,
    required String title,
    required bool video,
    required double voteAverage,
    required int voteCount,
  }) = _MovieDetails;

  factory MovieDetails.fromJson(Map<String, Object?> json) =>
      _$MovieDetailsFromJson(json);
}

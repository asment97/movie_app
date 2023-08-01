import 'package:flutter/material.dart';
import 'package:movie_app/screen/initial/initial.dart';
import 'package:movie_app/screen/movie/details.dart';
import 'package:movie_app/screen/movie/movie.dart';

Map<String, PageRoute<dynamic> Function(Object)> routes = {
  Routes.root: (Object params) => MaterialPageRoute(
        settings: const RouteSettings(name: Routes.root),
        builder: (context) => const InitialPage(),
      ),
  Routes.movie: (Object params) => MaterialPageRoute(
        settings: const RouteSettings(name: Routes.movie),
        builder: (context) => const MoviePage(),
      ),
  Routes.movieDetails: (Object params) => MaterialPageRoute(
        settings: const RouteSettings(name: Routes.movieDetails),
        builder: (context) => MovieDetailsPage(params as int),
      ),
};

class Routes {
  Routes._();

  static const root = '/';
  static const movie = '/movie';
  static const movieDetails = '/movie-details';
}

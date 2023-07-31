import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/models/movie.dart';
import 'package:movie_app/screen/movie/widgets/movie_card.dart';

class CustomMovieList extends StatelessWidget {
  const CustomMovieList(this.movies, {super.key});
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: movies.length > 20 ? 20 : movies.length,
        cacheExtent: 9999,
        itemBuilder: (context, index) {
          var url = movies[index].posterPath.toString();
          return KeyedSubtree(
            key: UniqueKey(),
            child: MovieCard(
              title: movies[index].title.toString(),
              image: CachedNetworkImageProvider(
                  "https://image.tmdb.org/t/p/w500$url"),
              id: movies[index].id.toString(),
              mediaType: "movie",
            ),
          );
        },
      ),
    );
  }
}

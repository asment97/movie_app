import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/models/movie.dart';
import 'package:movie_app/screen/movie/widgets/landing_card.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider(this.movies, {super.key});
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: (size.height * 0.33 < 300) ? 300 : size.height * 0.33,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        pageSnapping: true,
        itemCount: 20,
        itemBuilder: (context, index) {
          var url = movies[index].backdropPath.toString();
          return GestureDetector(
            onTap: () {},
            child: LandingCard(
              CachedNetworkImageProvider(
                "https://image.tmdb.org/t/p/original$url",
              ),
              movies[index].title.toString(),
            ),
          );
        },
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/models/movie.dart';
import 'package:movie_app/core/providers/app_provider.dart';
import 'package:movie_app/screen/movie/widgets/landing_card.dart';

class CustomCarouselSlider extends StatelessWidget {
  const CustomCarouselSlider(this.movies, {super.key});
  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CarouselSlider.builder(
      itemCount: movies.length,
      itemBuilder: (context, index, realIndex) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(
              context,
              Routes.movieDetails,
              arguments: movies[index].id,
            );
          },
          child: LandingCard(
            image: movies[index].backdropPath == null
                ? Image.asset("assets/images/not_available.png").image
                : CachedNetworkImageProvider(
                    "https://image.tmdb.org/t/p/original${movies[index].backdropPath}",
                  ),
            name: movies[index].title.toString(),
          ),
        );
      },
      options: CarouselOptions(
        height: (size.height * 0.4 < 400) ? 400 : size.height * 0.4,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}

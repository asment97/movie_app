import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/core/constants/custom_colors.dart';
import 'package:movie_app/core/providers/movie_provider.dart';
import 'package:movie_app/screen/movie/widgets/custom_carousel_slider.dart';
import 'package:movie_app/screen/movie/widgets/custom_movie_list.dart';
import 'package:movie_app/screen/movie/widgets/section_text.dart';

class MoviePage extends ConsumerWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nowPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    final popularMovies = ref.watch(popularMoviesProvider);
    final topRatedMovies = ref.watch(topRatedMoviesProvider);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: CustomColors.bgColor,
        child: ListView(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            nowPlayingMovies.when(
              data: (nowPlaying) {
                return CustomCarouselSlider(nowPlaying);
              },
              error: (error, stackTrace) {
                return const SizedBox.shrink();
              },
              loading: () {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
            popularMovies.when(
              data: (popular) {
                return Column(
                  children: [
                    const SectionText(title: "Popular", subtitle: "Movies"),
                    CustomMovieList(popular),
                  ],
                );
              },
              error: (error, stackTrace) {
                return const SizedBox.shrink();
              },
              loading: () {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
            topRatedMovies.when(
              data: (topRated) {
                return Column(
                  children: [
                    const SectionText(title: "TOP Rated", subtitle: "Movies"),
                    CustomMovieList(topRated),
                  ],
                );
              },
              error: (error, stackTrace) {
                return const SizedBox.shrink();
              },
              loading: () {
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.33,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/core/constants/custom_colors.dart';
import 'package:movie_app/core/providers/movie_provider.dart';
import 'package:movie_app/screen/movie/widgets/circular_button.dart';
import 'package:movie_app/screen/movie/widgets/text_container.dart';

class MovieDetailsPage extends ConsumerWidget {
  const MovieDetailsPage(this.id, {super.key});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final movieDetails = ref.watch(movieDetailsProvider(id));

    return Scaffold(
      body: movieDetails.when(
        data: (details) {
          return ListView(
              scrollDirection: Axis.vertical,
              physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      height:
                          size.height * 0.50 > 400 ? size.height * 0.50 : 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://image.tmdb.org/t/p/original${details.backdropPath}",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: size.width,
                      height:
                          size.height * 0.50 > 400 ? size.height * 0.50 : 400,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.transparent,
                              CustomColors.bgColor.withOpacity(0.20),
                              CustomColors.bgColor.withOpacity(0.50),
                              CustomColors.bgColor.withOpacity(0.70),
                              CustomColors.bgColor.withOpacity(1.00),
                            ]),
                      ),
                    ),
                    Container(
                      width: size.width,
                      height:
                          size.height * 0.40 > 350 ? size.height * 0.40 : 350,
                      margin: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            details.voteAverage.toStringAsFixed(1),
                            style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            details.title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "${details.runtime} mins",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            children: [
                              CircularButton(
                                icon: Icons.play_arrow_outlined,
                                onTap: () {},
                              ),
                              CircularButton(
                                icon: Icons.add,
                                onTap: () {},
                              ),
                              Visibility(
                                visible: details.adult,
                                child: CircularButton(
                                  icon: Icons.eighteen_up_rating_outlined,
                                  onTap: () {},
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  height: 36,
                  width: size.width,
                  margin: const EdgeInsets.only(left: 8),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: details.genres.length,
                    itemBuilder: (context, index) {
                      return TextContainer(
                        data: details.genres[index].name.toString(),
                        margin: const EdgeInsets.only(right: 8),
                        color: const Color(0xFF14303B),
                      );
                    },
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(8),
                      child: const Text(
                        "Status",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        TextContainer(
                          data: details.status,
                          margin: const EdgeInsets.only(
                              left: 8, right: 8, bottom: 8),
                          color: const Color(0xFF382E39),
                        ),
                        TextContainer(
                          data:
                              "Release: ${DateFormat.yMMMMd().format(DateTime.parse(details.releaseDate))}",
                          margin: const EdgeInsets.only(
                            left: 8,
                            right: 8,
                            bottom: 8,
                          ),
                          color: const Color(0xFF545551),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.all(8),
                      child: const Text(
                        "Overview",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    TextContainer(
                      data: details.overview,
                      margin: const EdgeInsets.all(8),
                      color: const Color(0xFF0F1D39),
                    ),
                  ],
                )
              ]);
        },
        error: (error, stackTrace) {
          return const SizedBox.shrink();
        },
        loading: () {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}

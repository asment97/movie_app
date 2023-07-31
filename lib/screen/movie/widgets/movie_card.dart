import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.title,
    required this.image,
    required this.id,
    required this.mediaType,
  });
  final String title;
  final ImageProvider image;
  final String id;
  final String mediaType;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 150,
            width: 100,
            margin: const EdgeInsets.fromLTRB(8, 4, 8, 4),
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image: image),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(
            width: 100,
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

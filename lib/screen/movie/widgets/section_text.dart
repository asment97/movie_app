import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/custom_colors.dart';

class SectionText extends StatelessWidget {
  const SectionText({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              title.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                letterSpacing: 5,
              ),
            ),
          ),
          Text(
            subtitle.toUpperCase(),
            style: const TextStyle(
              color: CustomColors.accentSecondary,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: 5,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/custom_colors.dart';

class LandingCard extends StatelessWidget {
  const LandingCard(this.image, this.name, {super.key});
  final ImageProvider image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.height * 0.33 < 300)
          ? 300
          : MediaQuery.of(context).size.height * 0.33,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: (MediaQuery.of(context).size.height * 0.33 < 300)
                ? 300
                : MediaQuery.of(context).size.height * 0.33,
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover, image: image),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.center,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  CustomColors.bgColor.withOpacity(0.30),
                  CustomColors.bgColor.withOpacity(0.50),
                  CustomColors.bgColor.withOpacity(0.70),
                ],
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.center,
                colors: [
                  CustomColors.bgColor.withOpacity(0.50),
                  CustomColors.bgColor.withOpacity(0.30),
                  CustomColors.bgColor.withOpacity(0.10),
                  Colors.transparent
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 25),
            alignment: Alignment.bottomCenter,
            width: MediaQuery.of(context).size.width,
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

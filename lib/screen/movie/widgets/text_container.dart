import 'package:flutter/material.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
    required this.data,
    required this.margin,
    required this.color,
  });

  final String data;
  final EdgeInsets margin;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: 36),
      margin: margin,
      decoration: BoxDecoration(
        color: color.withOpacity(0.6),
        border: Border.all(
          width: 0.75,
          color: const Color(0xFFA3A3B0).withOpacity(0.5),
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        child: Text(
          data,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

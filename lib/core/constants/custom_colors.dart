import 'package:flutter/material.dart';

class CustomColors {
  /// Colors from Tailwind CSS
  ///
  /// https://tailwindcss.com/docs/customizing-colors
  static const MaterialColor primarySwatch =
      MaterialColor(0xFF64748b, <int, Color>{
    50: Color(0xFFf8fafc),
    100: Color(0xFFf1f5f9),
    200: Color(0xFFe2e8f0),
    300: Color(0xFFcbd5e1),
    400: Color(0xFF94a3b8),
    500: Color(0xFF64748b),
    600: Color(0xFF475569),
    700: Color(0xFF334155),
    800: Color(0xFF1e293b),
    900: Color(0xFF0f172a),
    950: Color(0xFF020617)
  });

  static const Color bgColor = Color(0xFF020617);
  static const Color primaryColor = Color(0xFFFFFFFF);
  static const Color secondaryColor = Color(0xFFfafafa);
  static const Color accentSecondary = Color(0xFF00FFD1);
}

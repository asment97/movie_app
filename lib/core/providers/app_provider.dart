import 'package:flutter/material.dart';
import 'package:movie_app/screen/initial/initial.dart';

Map<String, PageRoute<dynamic> Function(Object)> routes = {
  Routes.root: (Object params) => MaterialPageRoute(
        settings: const RouteSettings(name: Routes.root),
        builder: (context) => const InitialPage(),
      ),
};

class Routes {
  Routes._();

  static const root = '/';
}

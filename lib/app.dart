import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/core/providers/app_provider.dart';
import 'package:movie_app/core/providers/auth_provider.dart';
import 'package:movie_app/core/themes/theme.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // initiate token provider
    ref.watch(tokenProvider);

    return MaterialApp(
      builder: (context, child) => child!,
      title: "Movie App",
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      initialRoute: Routes.root,
      onGenerateRoute: (settings) {
        return routes[settings.name]!(settings.arguments ?? '');
      },
    );
  }
}

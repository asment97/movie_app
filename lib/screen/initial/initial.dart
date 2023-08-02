import 'package:flutter/material.dart';
import 'package:movie_app/core/providers/app_provider.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Future.delayed(
        const Duration(seconds: 2),
        () {
          Navigator.pushNamedAndRemoveUntil(
            context,
            Routes.home,
            (route) => false,
          );
        },
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Movie App"),
      ),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/core/providers/bottom_nav_provider.dart';
import 'package:movie_app/screen/account/account.dart';
import 'package:movie_app/screen/movie/movie.dart';

class BottomNav extends ConsumerWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bottomNav = ref.watch(bottomNavProvider);

    return Scaffold(
      body: IndexedStack(
        index: bottomNav.bottomNavIndex,
        children: [
          const MoviePage(),
          Container(),
          const AccountPage(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {
                    bottomNav.bottomNavIndex = 0;
                  },
                  icon: Column(
                    children: [
                      Icon(
                        Icons.home,
                        size: 20,
                        color: bottomNav.bottomNavIndex == 0
                            ? Colors.white
                            : Colors.grey,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 10,
                          color: bottomNav.bottomNavIndex == 0
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    bottomNav.bottomNavIndex = 1;
                  },
                  icon: Column(
                    children: [
                      Icon(
                        Icons.favorite,
                        size: 20,
                        color: bottomNav.bottomNavIndex == 1
                            ? Colors.white
                            : Colors.grey,
                      ),
                      Text(
                        "Favourite",
                        style: TextStyle(
                          fontSize: 10,
                          color: bottomNav.bottomNavIndex == 1
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: IconButton(
                  onPressed: () {
                    bottomNav.bottomNavIndex = 2;
                  },
                  icon: Column(
                    children: [
                      Icon(
                        Icons.person,
                        size: 20,
                        color: bottomNav.bottomNavIndex == 2
                            ? Colors.white
                            : Colors.grey,
                      ),
                      Text(
                        "Account",
                        style: TextStyle(
                          fontSize: 10,
                          color: bottomNav.bottomNavIndex == 2
                              ? Colors.white
                              : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final bottomNavProvider = ChangeNotifierProvider<BottomNavProvider>((ref) {
  return BottomNavProvider();
});

class BottomNavProvider with ChangeNotifier {
  int _bottomNavIndex = 0;
  int get bottomNavIndex => _bottomNavIndex;
  set bottomNavIndex(int bottomNavIndex) {
    _bottomNavIndex = bottomNavIndex;
    notifyListeners();
  }

  bool shouldPop = false;
}

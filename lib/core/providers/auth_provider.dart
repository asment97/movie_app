import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/core/repositories/auth_repository.dart';

final tokenProvider = ChangeNotifierProvider<TokenProvider>(
  (ref) => TokenProvider(ref),
);

class TokenProvider extends ChangeNotifier {
  final Ref ref;
  FlutterSecureStorage storage = const FlutterSecureStorage();
  late bool isLoggedIn;
  late String? token;

  TokenProvider(this.ref) : super() {
    _init();
  }

  Future _init() async {
    final storageToken = await storage.read(key: "token");
    if (storageToken != null) {
      token = storageToken;
      isLoggedIn = true;
      notifyListeners();
    } else {
      ref.read(authRepositoryProvider).getRequestToken().then((value) {
        token = value.requestToken;
        log("Token: $token");
      });
      isLoggedIn = false;
      notifyListeners();
    }
  }

  Future<void> login(String username, String password) async {
    if (token == null) {
      log("Login", error: "Invalid token");
      return;
    }
    try {
      final res = await ref
          .read(authRepositoryProvider)
          .login(username, password, token!);

      storage.write(key: "token", value: res.requestToken);
      isLoggedIn = true;
      notifyListeners();
    } catch (e) {
      rethrow;
    }
  }

  void logout() {
    storage.delete(key: "token");
    isLoggedIn = false;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginState extends ChangeNotifier {
  final SharedPreferences localStorage;
  bool _loggedIn = false;

  LoginState(this.localStorage) {
    loggedIn = localStorage.getBool('authKey') ?? false;
  }

  bool get loggedIn => _loggedIn;
  set loggedIn(bool value) {
    _loggedIn = value;
    localStorage.setBool('authKey', value);
    notifyListeners();
  }

  void checkLoggedIn() {
    //loggedIn = false;
    loggedIn = localStorage.getBool('authKey') ?? false;
    print(loggedIn);
  }

  void logOutUser() {
    loggedIn = false;
    localStorage.clear();
    notifyListeners();
  }
}
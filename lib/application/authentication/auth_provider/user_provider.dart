import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  bool _userLoggedIn = false;
  void setUserAuth({required bool authState}) {
    _userLoggedIn = authState;
    notifyListeners();
  }

  bool get userState => _userLoggedIn;
}

import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String language="en";

  void changeTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }
  void changelang(String lang){
    language=lang;
    notifyListeners();
  }
}

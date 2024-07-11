import 'package:eslamy/shared_preferences.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String language = "en";

  void init() {
    String myTheme = SharedPref.getTheme();
    if (myTheme == "light") {
      themeMode = ThemeMode.light;
    } else {
      themeMode = ThemeMode.dark;
    }
    language = SharedPref.getLang();
  }

  void changeTheme(ThemeMode mode) {
    themeMode = mode;
    if (mode == ThemeMode.dark) {
      SharedPref.setTheme("dark");
    } else {
      SharedPref.setTheme("light");
    }

    notifyListeners();
  }

  void changelang(String lang) {
    language = lang;
    SharedPref.setLang(lang);
    notifyListeners();
  }
}

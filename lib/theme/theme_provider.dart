import 'package:flutter/material.dart';
import 'package:pediatric_app/theme/theme.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){
    if(_themeData == lightMode){
      _themeData = darkMode;
    } else{
      _themeData = lightMode;
    }
  }
}
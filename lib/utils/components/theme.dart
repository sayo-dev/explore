import 'package:explore/utils/shared_data.dart';
import 'package:flutter/material.dart';

import '../constants/color.dart';

class ThemeProvider extends ChangeNotifier{
  static bool value = ThemeValueStorage.retrieveThemeValue();
  ThemeMode themeMode = value ? ThemeMode.light : ThemeMode.dark;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void changeTheme(bool isChanged){
    ThemeValueStorage.storeThemeValue(isChanged);
    themeMode = isChanged ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class DefaultTheme{
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: const ColorScheme.light(),
  );

  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Palette.kDarkColor,
      colorScheme: const ColorScheme.dark()
  );
}
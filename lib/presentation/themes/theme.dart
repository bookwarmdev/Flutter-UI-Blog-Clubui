 import 'package:blogclubui/core/core.dart';
import 'package:flutter/material.dart';
  
class AppTheme {
  ThemeData? _selectedThemeData;

  AppTheme({bool? themeBrightness}) {
    _selectedThemeData = themeBrightness! ? lighTheme : darkTheme;
  }

  ThemeData? get getThemeData => _selectedThemeData;

  ThemeData lighTheme = ThemeData.light().copyWith(
    brightness: AppColor.lightColorScheme.brightness,
    scaffoldBackgroundColor: AppColor.lightColorScheme.background,
    primaryColor: AppColor.lightColorScheme.primary,
  );
  ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: AppColor.darkColorScheme.brightness,
    scaffoldBackgroundColor: AppColor.darkColorScheme.background,
    primaryColor: AppColor.darkColorScheme.primary,
  );
}

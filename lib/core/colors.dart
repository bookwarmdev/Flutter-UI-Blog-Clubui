import 'package:flutter/material.dart';

// https://material-foundation.github.io/material-theme-builder/#/custom

class AppColor {
  static const seed = Color(0xFF1453D7);

  static const lightColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFF1453D7),
    onPrimary: Color(0xFFFFFFFF),
    primaryContainer: Color(0xFFDBE1FF),
    onPrimaryContainer: Color(0xFF00174C),
    secondary: Color(0xFF2554D0),
    onSecondary: Color(0xFFFFFFFF),
    secondaryContainer: Color(0xFFDCE1FF),
    onSecondaryContainer: Color(0xFF00164E),
    tertiary: Color(0xFF0061A3),
    onTertiary: Color(0xFFFFFFFF),
    tertiaryContainer: Color(0xFFD1E4FF),
    onTertiaryContainer: Color(0xFF001D36),
    error: Color(0xFFBA1A1A),
    errorContainer: Color(0xFFFFDAD6),
    onError: Color(0xFFFFFFFF),
    onErrorContainer: Color(0xFF410002),
    background: Color(0xFFFEFBFF),
    onBackground: Color(0xFF1B1B1F),
    surface: Color(0xFFFEFBFF),
    onSurface: Color(0xFF1B1B1F),
    surfaceVariant: Color(0xFFE2E1EC),
    onSurfaceVariant: Color(0xFF45464F),
    outline: Color(0xFF757680),
    onInverseSurface: Color(0xFFF2F0F4),
    inverseSurface: Color(0xFF303034),
    inversePrimary: Color(0xFFB4C4FF),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFF1453D7),
  );

  static const darkColorScheme = ColorScheme(
    brightness: Brightness.dark,
    primary: Color(0xFFB4C4FF),
    onPrimary: Color(0xFF00297A),
    primaryContainer: Color(0xFF003DAA),
    onPrimaryContainer: Color(0xFFDBE1FF),
    secondary: Color(0xFFB6C4FF),
    onSecondary: Color(0xFF00287D),
    secondaryContainer: Color(0xFF003BAF),
    onSecondaryContainer: Color(0xFFDCE1FF),
    tertiary: Color(0xFF9DCAFF),
    onTertiary: Color(0xFF003258),
    tertiaryContainer: Color(0xFF00497C),
    onTertiaryContainer: Color(0xFFD1E4FF),
    error: Color(0xFFFFB4AB),
    errorContainer: Color(0xFF93000A),
    onError: Color(0xFF690005),
    onErrorContainer: Color(0xFFFFDAD6),
    background: Color(0xFF1B1B1F),
    onBackground: Color(0xFFE4E2E6),
    surface: Color(0xFF1B1B1F),
    onSurface: Color(0xFFE4E2E6),
    surfaceVariant: Color(0xFF45464F),
    onSurfaceVariant: Color(0xFFC6C6D0),
    outline: Color(0xFF8F909A),
    onInverseSurface: Color(0xFF1B1B1F),
    inverseSurface: Color(0xFFE4E2E6),
    inversePrimary: Color(0xFF1453D7),
    shadow: Color(0xFF000000),
    surfaceTint: Color(0xFFB4C4FF),
  );
}
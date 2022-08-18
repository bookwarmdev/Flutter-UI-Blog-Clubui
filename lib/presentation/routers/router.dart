import 'package:blogclubui/presentation/screens/auth/auth_screen.dart';
import 'package:blogclubui/presentation/screens/home/home_screen.dart';
import 'package:blogclubui/presentation/screens/intro/onboarding_screen.dart';
import 'package:flutter/material.dart';

class BlogClubUi {
  static const String onBoardingScreen = "/onBoardingScreen";
  static const String authScreen = "/authScreen";
  static const String homeScreen = "/homeScreen";
}

class AppRouter {
  static Route route(RouteSettings settings) {
    switch (settings.name) {
      case BlogClubUi.onBoardingScreen:
        return MaterialPageRoute<Widget>(
          builder: (context) => const OnBoardingScreen(),
        );
      case BlogClubUi.authScreen:
        return MaterialPageRoute(
          builder: (context) => const AuthScreen(),
        );
      case BlogClubUi.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Text("data"),
        );
    }
  }
}

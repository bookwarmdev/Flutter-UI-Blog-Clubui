import 'package:blogclubui/presentation/screens/auth/auth_screen.dart';
import 'package:blogclubui/presentation/screens/home/home_screen.dart';
import 'package:blogclubui/presentation/screens/home/news_screen.dart';
import 'package:blogclubui/presentation/screens/home/profile_screen.dart';
import 'package:blogclubui/presentation/screens/home/status_screen.dart';
import 'package:blogclubui/presentation/screens/intro/onboarding_screen.dart';
import 'package:flutter/material.dart';

class BlogClubUi {
  static const String onBoardingScreen = "/onBoardingScreen";
  static const String authScreen = "/authScreen";
  static const String homeScreen = "/homeScreen";
  static const String statusScreen = "/statusScreen";
  static const String newsScreen = "/newsScreen";
  static const String profileScreen = "/profileScreen";
}

class AppRouter {
  static Route route(RouteSettings settings) {
    final args = settings.arguments;

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
      case BlogClubUi.statusScreen:
        return MaterialPageRoute(
          builder: (context) => const StatusScreen(),
        );
      case BlogClubUi.newsScreen:
        if (args is String) {
          return MaterialPageRoute(
            builder: (context) => NewsScreen(
              index: args,
            ),
          );
        }
        return MaterialPageRoute(
          builder: (context) => const Text("data"),
        );
      case BlogClubUi.profileScreen:
        return MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => const Text("data"),
        );
    }
  }
}

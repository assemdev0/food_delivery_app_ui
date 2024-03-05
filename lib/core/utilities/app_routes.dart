import 'package:flutter/material.dart';
import '/features/all_foods/views/all_foods_view.dart';
import '/features/auth/views/auth_view.dart';
import '/features/get_started/views/get_started_view.dart';
import '/features/home/views/home_layout_view.dart';
import '/features/profile/views/profile_view.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String authRoute = '/auth';
  static const String homeRoute = '/home';
  static const String allFoodsRoute = '/allFoods';
  static const String profileRoute = '/profile';
}

class RoutesManager {
  static Route<dynamic>? Function(RouteSettings settings) onGenerateRoute =
      (settings) {
    switch (settings.name) {
      case AppRoutes.initialRoute:
        return MaterialPageRoute(
          builder: (context) => const GetStartedView(),
        );
      case AppRoutes.authRoute:
        return MaterialPageRoute(
          builder: (context) => const AuthView(),
        );
      case AppRoutes.homeRoute:
        return MaterialPageRoute(
          builder: (context) => const HomeLayoutView(),
        );
      case AppRoutes.allFoodsRoute:
        return MaterialPageRoute(
          builder: (context) => const AllFoodsView(),
        );
      case AppRoutes.profileRoute:
        return MaterialPageRoute(
          builder: (context) => const ProfileView(),
        );
      default:
        return null;
    }
  };
}

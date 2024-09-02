import 'package:flutter/material.dart';
import 'package:shopping_app/core/router/routes.dart';
import 'package:shopping_app/features/home/ui/home_screen.dart';
import 'package:shopping_app/features/splash/splash_screen.dart';

class AppRouter {
  static Route<dynamic> onGenerate(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutesString.homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
      case RoutesString.splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('noRouteFound'),
        ),
        body: const Center(child: Text('noRouteFound')),
      ),
    );
  }
}

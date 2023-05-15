import 'package:flutter/material.dart';
import 'package:ukpa_prms_mobile_app/constants/strings_constant.dart';

import '../screens/Authentication/auth/Sign_In_Page.dart';
import '../screens/splash/splash_screen.dart';

class Routes {
  static const String splashRoute = '/';
  static const String loginRoute = '/login';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => SignIn());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.noRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.noRouteFound),
        ),
      ),
    );
  }
}

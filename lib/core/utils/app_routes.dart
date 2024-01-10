import 'package:flutter/material.dart';

import '../../features/splash/ui/views/splash_view.dart';

class AppRoutes {
  static const String splash = "/";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
            builder: (_) =>  const SplashView());

    default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                    child: Text('No route defined for ${settings.name}'),
                  ),
                ));
    }
  
}
static Widget buildPage(RouteSettings settings) {
    switch (settings.name) {
      default:
        return const SizedBox.shrink();
    }
  }
}

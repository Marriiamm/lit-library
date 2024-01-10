import 'package:flutter/material.dart';

import '../../features/home/ui/views/book_details_view.dart';
import '../../features/splash/ui/views/splash_view.dart';

class AppRoutes {
  static const String splash = "/";
  static const String bookDetails = "/BookDetailsView";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case bookDetails:
        return MaterialPageRoute(builder: (_) => const BookDetailsView());

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

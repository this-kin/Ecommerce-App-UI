import 'package:ecommerce/modules/auth/login.dart';
import 'package:ecommerce/modules/home/home.dart';
import 'package:ecommerce/modules/splash/splash.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;
    switch (routeSettings.name) {
      case '/splash':
        return MaterialPageRoute(builder: (_) => Splash());
      case '/login':
        return MaterialPageRoute(builder: (_) => Login());
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
    }
    return args;
  }
}

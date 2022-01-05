import 'package:ecommerce/modules/auth/login.dart';
import 'package:ecommerce/modules/cart/cart.dart';
import 'package:ecommerce/modules/drawer/drawer.dart';
import 'package:ecommerce/modules/favorite/favorite.dart';
import 'package:ecommerce/modules/home/dashboard.dart';
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
      case '/drawer':
        return MaterialPageRoute(builder: (_) => MyDrawer());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => Dashboard());
      case '/favorite':
        return MaterialPageRoute(builder: (_) => Favorite());
      case '/cart':
        return MaterialPageRoute(builder: (_) => Cart());
      // case '/drawer':
      //   return MaterialPageRoute(builder: (_) => MyDrawer());
      // case '/drawer':
      //   return MaterialPageRoute(builder: (_) => MyDrawer());
    }
    return args;
  }
}

import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/app_constants.dart';
import 'package:zengage_learning_platform/screens/home/home_page.dart';

class RouteGenerator {
  static const SPLASH_ROUTE = '/';
  static const HOME_ROUTE = 'home'; //  temporary
  static const LOGIN_ROUTE = '/login';
  static const REGISTRATION_ROUTE = '/login/registration';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      /*case SPLASH_ROUTE:
        return MaterialPageRoute(builder: (_) => SplashPage());
      case LOGIN_ROUTE:
        return MaterialPageRoute(builder: (_) => LoginPage());
      case REGISTRATION_ROUTE:
        return MaterialPageRoute(builder: (_) => RegistrationPage());*/
      case HOME_ROUTE:
        return MaterialPageRoute(
            builder: (_) => HomePage(
                  title: homePageTitle,
                ));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text(routeErrorTitle),
          backgroundColor: Colors.amber,
        ),
        backgroundColor: Colors.red,
        body: Center(
            child: Text(
          'Error Occured',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),
        )),
      );
    });
  }
}

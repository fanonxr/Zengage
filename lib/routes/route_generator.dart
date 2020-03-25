import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_constants.dart';
import 'package:zengage_learning_platform/screens/assessment_page.dart';
import 'package:zengage_learning_platform/screens/coaching_page.dart';
import 'package:zengage_learning_platform/screens/course_page.dart';
import 'package:zengage_learning_platform/screens/home_page.dart';
import 'package:zengage_learning_platform/screens/training_page.dart';
import 'package:zengage_learning_platform/screens/upcoming_courses_page.dart';

class RouteGenerator {
  static const SPLASH_ROUTE = '/';
  static const HOME_ROUTE = 'home'; //  temporary
  static const LOGIN_ROUTE = '/login';
  static const REGISTRATION_ROUTE = '/login/registration';
  static const UPCOMING_COURSE_ROUTE = '/upcomingcourses';
  static const TRAINING_ROUTE = '/training';
  static const ASSESSMENT_ROUTE = '/assessment';
  static const COACHING_ROUTE = '/coaching';
  static const COURSE_ROUTE = '/courses';

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
      case UPCOMING_COURSE_ROUTE:
        return MaterialPageRoute(builder: (_) => UpcomingCoursesPage());
      case TRAINING_ROUTE:
        return MaterialPageRoute(builder: (_) => TrainingPage());
      case ASSESSMENT_ROUTE:
        return MaterialPageRoute(builder: (_) => AssessmentPage());
      case COACHING_ROUTE:
        return MaterialPageRoute(builder: (_) => CoachingPage());
      case COURSE_ROUTE:
        return MaterialPageRoute(builder: (_) => CoursePage());

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

import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_constants.dart';
import 'package:zengage_learning_platform/models/Course.dart';
import 'package:zengage_learning_platform/screens/assessment/assessment_page.dart';
import 'package:zengage_learning_platform/screens/coaching_page.dart';
import 'package:zengage_learning_platform/screens/course_details_page.dart';
import 'package:zengage_learning_platform/screens/home_page.dart';
import 'package:zengage_learning_platform/screens/register_page.dart';
import 'package:zengage_learning_platform/screens/training_page.dart';
import 'package:zengage_learning_platform/screens/upcoming_courses_page.dart';

class RouteGenerator {
  static const SPLASH_ROUTE = '/';
  static const HOME_ROUTE = 'home'; //  temporary
  static const LOGIN_ROUTE = '/login';
  static const REGISTRATION_ROUTE = '/registration';
  static const UPCOMING_COURSE_ROUTE = '/upcomingcourses';
  static const TRAINING_ROUTE = '/training';
  static const ASSESSMENT_ROUTE = '/assessment';
  static const COACHING_ROUTE = '/coaching';

  static const COURSE_DETAILS_ROUTE = '$TRAINING_ROUTE/courseDetails';

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
      case COURSE_DETAILS_ROUTE:
        if (args is Course) {
          print("Args is course $args");
          final Course course = args;
          return MaterialPageRoute(
              builder: (_) => CourseDetailsPage(course: course));
        }
        print("Args is not course");
        return _errorRoute();
      case REGISTRATION_ROUTE:
        return MaterialPageRoute(builder: (_) => RegisterPage());

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

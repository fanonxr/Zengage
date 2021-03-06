import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_constants.dart';
import 'package:zengage_learning_platform/models/Course.dart';
import 'package:zengage_learning_platform/screens/about_us_page.dart';
import 'package:zengage_learning_platform/screens/assessment/assessment_page.dart';
import 'package:zengage_learning_platform/screens/coaching_page.dart';
import 'package:zengage_learning_platform/screens/course_details_page.dart';
import 'package:zengage_learning_platform/screens/home/contact_us_page.dart';
import 'package:zengage_learning_platform/screens/home_page.dart';
import 'package:zengage_learning_platform/screens/register_page.dart';
import 'package:zengage_learning_platform/screens/training_page.dart';
import 'package:zengage_learning_platform/screens/upcoming_courses_page.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

class RouteGenerator {
  static const HOME_ROUTE = '/';
  static const LOGIN_ROUTE = '/login';
  static const REGISTRATION_ROUTE = '/registration';
  static const UPCOMING_COURSE_ROUTE = '/upcomingcourses';
  static const TRAINING_ROUTE = '/training';
  static const ASSESSMENT_ROUTE = '/assessment';
  static const COACHING_ROUTE = '/coaching';
  static const CONTACT_US_ROUTE = '/contactus';
  static const ABOUT_US_ROUTE = '/aboutus';
  static const COURSE_DETAILS_ROUTE = '/courseDetails';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case HOME_ROUTE:
        return MaterialPageRoute(
            builder: (_) => HomePage(
                  title: homePageTitle,
                ),
            settings: settings);
        break;
      case UPCOMING_COURSE_ROUTE:
        return MaterialPageRoute(
            builder: (_) => UpcomingCoursesPage(), settings: settings);
        break;
      case TRAINING_ROUTE:
        return MaterialPageRoute(
            builder: (_) => TrainingPage(), settings: settings);
        break;
      case ASSESSMENT_ROUTE:
        return MaterialPageRoute(
            builder: (_) => AssessmentPage(), settings: settings);
        break;
      case COACHING_ROUTE:
        return MaterialPageRoute(
            builder: (_) => CoachingPage(), settings: settings);
        break;
      case COURSE_DETAILS_ROUTE:
        if (args is Course) {
          final Course course = args;
          return MaterialPageRoute(
              builder: (_) => CourseDetailsPage(course: course),
              settings: settings);
        } else {
          return MaterialPageRoute(
              builder: (_) => CourseDetailsPage(
                    course: null,
                  ));
        }
        break;
      case REGISTRATION_ROUTE:
        return MaterialPageRoute(
            builder: (_) => RegisterPage(), settings: settings);
        break;
      case ABOUT_US_ROUTE:
        return MaterialPageRoute(
            builder: (_) => AboutUsPage(), settings: settings);
        break;
      case CONTACT_US_ROUTE:
        return MaterialPageRoute(
            builder: (_) => ContactUsPage(), settings: settings);
        break;
      default:
        return _errorRoute(settings);
        break;
    }
  }

  static Route<dynamic> _errorRoute([RouteSettings settings]) {
    return MaterialPageRoute(
        builder: (_) {
          return Scaffold(
            appBar: NavBar(),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        '404 Page not Found',
                        style: TextStyle(
//                  color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                    ),
                  ),
                ),
                Footer(),
              ],
            ),
          );
        },
        settings: settings);
  }
}

import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';
import 'package:zengage_learning_platform/styles/style.dart';

import 'constants/app_constants.dart';

void main() => runApp(ZengageApp());

class ZengageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(title: AppBarStyle),
              color: AppBarStyle.backgroundColor),
          textTheme: TextTheme(
            title: TextTitleStyle,
            body1: Body1TextStyle,
          )),
      initialRoute: RouteGenerator.HOME_ROUTE,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

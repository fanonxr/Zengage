import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';

import 'app_constants.dart';

void main() => runApp(ZengageApp());

class ZengageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RouteGenerator.HOME_ROUTE,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}

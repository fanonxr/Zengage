import 'package:flutter/material.dart';
import 'app_constants.dart';
import 'screens/home/home_page.dart';

void main() => runApp(ZengageApp());

class ZengageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(title: homePageTitle),
    );
  }
}

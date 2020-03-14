import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

class UpcomingCoursesPage extends StatefulWidget {
  @override
  _UpcomingCoursesPageState createState() => _UpcomingCoursesPageState();
}

class _UpcomingCoursesPageState extends State<UpcomingCoursesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: Text("Upciming Courses page"),
        ),
      ),
    );
  }
}

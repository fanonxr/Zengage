import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/models/Course.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

class CoursePage extends StatefulWidget {
  final Course course;
  CoursePage({this.course});
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: Text(widget.course.courseTitle),
        ),
      ),
    );
  }
}

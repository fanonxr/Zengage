import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:zengage_learning_platform/models/Course.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

class CourseDetailsPage extends StatefulWidget {
//  final int courseIndex;
  final Course course;

  CourseDetailsPage({@required this.course});

  @override
  _CourseDetailsPageState createState() => _CourseDetailsPageState();
}

Future<String> readFileContents(String filePath) async {
  return rootBundle.loadString(filePath);
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  @override
  Widget build(BuildContext context) {
    print("Inside Course detail");
    print(widget.course.toString());
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: Text("Course Details Page ${widget.course.toString()}"),
        ),
      ),
    );
  }
}

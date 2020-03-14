import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

class AssessmentPage extends StatefulWidget {
  @override
  _AssessmentPageState createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<AssessmentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildNavBar(context, "Assessments"),
        body: Container(
          child: Text("Assement Page"),
        ),
      ),
    );
  }
}

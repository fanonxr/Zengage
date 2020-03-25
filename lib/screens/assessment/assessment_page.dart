import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';
import 'package:zengage_learning_platform/widgets/body/ContactUsImageBanner.dart';

import 'widgets/AssessmentsList.dart';
import 'widgets/WhyAssessmentHeader.dart';

class AssessmentPage extends StatefulWidget {
  @override
  _AssessmentPageState createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<AssessmentPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: ListView(
            children: [
              ContactUsImageBanner(),
              WhyAssessmentHeader(),
              AssessmentsList(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

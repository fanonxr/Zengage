import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_constants.dart';
import 'package:zengage_learning_platform/widgets/body/ContactUsImageBanner.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

import '../widgets/body/BodyDropdownItemsList.dart';
import '../widgets/body/WhyBodyHeader.dart';
import 'assessment/assessment_page.dart';

class CoachingPage extends StatefulWidget {
  @override
  _CoachingPageState createState() => _CoachingPageState();
}

class _CoachingPageState extends State<CoachingPage> {
  @override
  Widget build(BuildContext context) {
    final coachingList = [
      'Agile Transformation',
      'DevOps Transformation',
      'Tools Assessments & Implementation'
    ];

    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  ContactUsImageBanner(
                    imageLink: 'assets/images/coaching/contact-us-coaching.jpg',
                  ),
                  WhyBodyHeader(
                    topImageLink:
                        'assets/images/coaching/coaching-page-image.jpg',
                    headerText: 'Why Coaching',
                    bodyText: coachingBodyText,
                  ),
                  BodyDropdownItemsList(
                    assessmentListItems: coachingList,
                  ),
                  ContactUsButton(),
                ],
              ),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}

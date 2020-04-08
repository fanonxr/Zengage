import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/body/ContactUsImageBanner.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

import '../../widgets/body/BodyDropdownItemsList.dart';
import '../../widgets/body/WhyBodyHeader.dart';

class AssessmentPage extends StatefulWidget {
  @override
  _AssessmentPageState createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<AssessmentPage> {
  @override
  Widget build(BuildContext context) {
    final assessmentsList = [
      'Leadership Assessment',
      'Organization Assessment',
      'Portfolio Assessment',
      'Program Assessment',
      'Team Assessment',
      'Individual Role | Talent'
    ];

    final bodyText =
        "Embedded in the Agile principles is the concept of reflection, feedback, and continuous improvement.  "
        "The best way to progress is to assess your current Agile environment in order to identify areas for improvement.  "
        "Knowledge gained from assessments can be crucial in developing a plan to help you and your organization progress with Agile.";

    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: ListView(
            children: [
              Column(
                children: <Widget>[
                  ContactUsImageBanner(
                    imageLink:
                        'assets/images/assessment/assessment-page-banner.jpg',
                  ),
                  WhyBodyHeader(
                    topImageLink:
                        "assets/images/assessment/assessment-page-logo.png",
                    bodyText: bodyText,
                  ),
                  BodyDropdownItemsList(
                    headerText: 'What are different types of assessments?',
                    assessmentListItems: assessmentsList,
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

class ContactUsButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 60.0),
      width: MediaQuery.of(context).size.width / 3,
      child: MaterialButton(
        color: Colors.grey[300],
        padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
        onPressed: () {
          print("Contact Us clicked");
        },
        child: Text(
          'Contact Us',
          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.lightBlue,
          ),
        ),
      ),
    );
  }
}

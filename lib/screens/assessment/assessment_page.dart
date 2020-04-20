import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/extensions/hover_extensions.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';
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
    final assessmentsList = <WhyItems>[
      WhyItems(
          title: 'Leadership Assessment',
          contents:
              'An Agile leader is not merely an enlightened manager.  Agile requires a new set of skills to help guide your team.  A leadership assessment can help you recognize areas requiring further training and focus to assist in empowering your teams and coordinating your Agile efforts at an enterprise level.'),
      WhyItems(
          title: 'Organization Assessment',
          contents:
              'Use an organization assessment to set a baseline for your overall Agile implementation.  See where you are taking advantage of Agile and where your company should focus their transformation efforts.  Sometimes an outside viewpoint is needed to be able to see the details that so often go unnoticed.'),
      WhyItems(
          title: 'Portfolio Assessment',
          contents:
              'It isn\'t enough to do things right - you need to do the right things.  A portfolio assessment can help to coordinate consistent themes across all of your teams to ensure that your high-level strategies are being implemented.'),
      WhyItems(
          title: 'Program Assessment ',
          contents:
              'Measure the effectiveness of your Agile implementation.  Identify targets for improvement across a number of development teams.  See where your planning and execution are working well, and where they can be improved.'),
      WhyItems(
          title: 'Team Assessment',
          contents:
              'A team is more than the sum of its parts - there\'s a synergy at work when there\'s a shared vision and everyone is in sync.  Uncover the dynamics of your team\'s environment to enable all the members to contribute up to their full potential.'),
      WhyItems(
          title: 'Individual Role/Talent ',
          contents:
              'Each member of an Agile team needs a consistent level of understanding in order to enable organizational transformation.  Learn how your team members are using Agile practices and where they need additional coaching.')
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
                        'https://firebasestorage.googleapis.com/v0/b/zengage-learning.appspot.com/o/Assessment-page-banner.jpg?alt=media&token=f69601d2-4898-467a-955b-9006bf66cc62',
                  ),
                  WhyBodyHeader(
                    topImageLink:
                        "assets/images/assessment/assessment-page-logo.png",
                    bodyText: bodyText,
                  ),
                  BodyDropdownItemsList(
                    headerText: 'What are the different types of assessments?',
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
    return HandCursor(
      child: Container(
        margin: EdgeInsets.only(bottom: 60.0),
        width: MediaQuery.of(context).size.width / 3,
        child: MaterialButton(
          color: Colors.grey[300],
          padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
          onPressed: () {
            print("Contact Us clicked");
            Navigator.of(context).pushNamed(RouteGenerator.CONTACT_US_ROUTE);
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
      ),
    );
  }
}

class WhyItems {
  String contents;
  String title;

  WhyItems({this.title, this.contents});
}

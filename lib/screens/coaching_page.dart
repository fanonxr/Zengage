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
      WhyItems(
          title: 'Agile Transformation',
          contents:
              'Want to introduce the power of Agile to your organization?  Our coaches can work with your teams to bring them up to speed.  We will define the roles and responsibilities of the various team members and stakeholders, assist with implementing Agile practices including Scrum, Kanban and Lean, and help to position your group into moving ahead on your own.'),
      WhyItems(
          title: 'DevOps Transformation',
          contents:
              'Combining both software development and operations, an Agile DevOps environment maximizes productivity by coordinating a shared vision.  This enables your organization to cooperate on a common set of tools and practices, from planning to maintenance.'),
      WhyItems(
          title: 'Tools Assessment and Implementation',
          contents:
              'Agile is a set of principles – there are a plethora of tools available, but which ones are best for your specific needs and goals?  With this coaching session, we help you assess your current toolset and your organization’s strengths and challenges, and we assemble a collection of tools specific to your requirements.')
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

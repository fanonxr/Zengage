import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/body/ContactUsImageBanner.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

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
              Column(
                children: <Widget>[
                  ContactUsImageBanner(),
                  WhyAssessmentHeader(),
                  AssessmentsList(),
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

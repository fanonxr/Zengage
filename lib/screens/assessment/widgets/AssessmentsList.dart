import 'package:flutter/material.dart';

class AssessmentsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(80.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'What are different types of assessments?',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
          ),
          AssessmentListItem(
            title: 'Leadership Assesment',
          ),
          AssessmentListItem(
            title: 'Organization Assessment',
          ),
          AssessmentListItem(
            title: 'Portfolio Assesment',
          ),
          AssessmentListItem(
            title: 'Program Assesment',
          ),
          AssessmentListItem(
            title: 'Team Assesment',
          ),
          AssessmentListItem(
            title: 'Individual Role | Talent',
          ),
        ],
      ),
    );
  }
}

class AssessmentListItem extends StatelessWidget {
  final String title;

  const AssessmentListItem({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        color: Colors.grey[300],
        padding: EdgeInsets.fromLTRB(16.0, 26.0, 0.0, 26.0),
        child: Text(
          title,
          style: TextStyle(color: Colors.black45, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AssessmentsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final assessmentListItems = [
      'Leadership Assesment',
      'Organization Assessment',
      'Portfolio Assesment',
      'Program Assesment',
      'Team Assesment',
      'Individual Role | Talent',
    ];

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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: assessmentListItems.length,
                itemBuilder: (context, index) {
                  return AssessmentListItem(title: assessmentListItems[index]);
                }),
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

import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/screens/assessment/assessment_page.dart';

class BodyDropdownItemsList extends StatelessWidget {
  final List<WhyItems> assessmentListItems;
  final String headerText;

  BodyDropdownItemsList(
      {this.headerText = '', @required this.assessmentListItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(80.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Visibility(
            visible: headerText != '',
            child: Text(
              headerText,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: assessmentListItems.length,
                itemBuilder: (context, index) {
                  return AssessmentListItem(
                      title: assessmentListItems[index].title,
                      content: assessmentListItems[index].contents);
                }),
          ),
        ],
      ),
    );
  }
}

class AssessmentListItem extends StatelessWidget {
  final String title;
  final String content;

  const AssessmentListItem({Key key, @required this.title, this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.80,
            color: Colors.grey[300],
            padding: EdgeInsets.fromLTRB(16.0, 26.0, 0.0, 26.0),
            child: Text(
              title,
              style:
                  TextStyle(color: textGreyColor, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            color: Colors.white,
            padding: EdgeInsets.fromLTRB(16.0, 26.0, 0.0, 26.0),
            child: Text(
              content,
              style: TextStyle(
                color: Colors.black, /*fontWeight: FontWeight.bold*/
              ),
            ),
          )
        ],
      ),
    );
  }
}

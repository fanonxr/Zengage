import 'package:flutter/material.dart';

class BodyDropdownItemsList extends StatelessWidget {
  final List<String> assessmentListItems;
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
                  return AssessmentListItem(title: assessmentListItems[index]);
                }),
          ),
        ],
      ),
    );
  }
}

class AssessmentListItem extends StatefulWidget {
  final String title;

  const AssessmentListItem({Key key, @required this.title}) : super(key: key);

  @override
  _AssessmentListItemState createState() =>
      _AssessmentListItemState(title: title);
}

class _AssessmentListItemState extends State<AssessmentListItem> {
  String title;

  _AssessmentListItemState({this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 40.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            title = "Changed";
          });
        },
        child: Container(
          color: Colors.grey[300],
          padding: EdgeInsets.fromLTRB(16.0, 26.0, 0.0, 26.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(
                    color: Colors.black45, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.add,
                  semanticLabel: 'Expand',
                  color: Colors.lightBlue,
                  size: 44.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

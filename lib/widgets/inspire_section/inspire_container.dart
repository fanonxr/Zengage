import 'package:flutter/material.dart';

class InspiredContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      height: MediaQuery.of(context).size.height / 2.5,
      color: Colors.grey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "GET INSPIRED",
            style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Divider(
              color: Colors.white,
              thickness: 10.0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                PersonBadge(
                    imagePath: "assets/images/homepage/person-3.png",
                    inspireText:
                        "\n \n Amazing courses \n I can't believe how good"),
                PersonBadge(
                    imagePath: "assets/images/homepage/person-4.png",
                    inspireText: "\n \n Changed my life. \n I love it \n"),
                PersonBadge(
                    imagePath: "assets/images/homepage/person-2.png",
                    inspireText: "\n \n Scum newbie to \n scrum master \n "),
                PersonBadge(
                    imagePath: "assets/images/homepage/person-1.png",
                    inspireText: "\n \n Agile is the way \n"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PersonBadge extends StatelessWidget {
  final String imagePath;
  final String inspireText;

  PersonBadge({this.imagePath, this.inspireText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width / 5,
          height: MediaQuery.of(context).size.height / 6,
          color: Colors.white,
          child: Container(
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: Image.asset(imagePath),
            ),
          ),
        ),
        Text(
          inspireText,
          style: TextStyle(color: Colors.white),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PartnersContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width / 1,
      height: MediaQuery.of(context).size.height / 2,
      padding: EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Our Partners",
            style: TextStyle(
                color: Colors.black,
                fontSize: 28.0,
                fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Divider(
              color: Colors.blue,
              thickness: 10.0,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildImageBadge(
                  "assets/images/homepage/leading-logo.png", context),
              buildImageBadge(
                  "assets/images/homepage/scrum-2-logo.png", context),
              buildImageBadge(
                  "assets/images/homepage/scrum-3-logo.png", context),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildImageBadge(String imagePath, context) {
  return Container(
      height: MediaQuery.of(context).size.height / 5,
      width: MediaQuery.of(context).size.width / 5,
      child: Image.asset(imagePath));
}

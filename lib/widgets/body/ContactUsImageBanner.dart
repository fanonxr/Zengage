import 'package:flutter/material.dart';

class ContactUsImageBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.3,
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 100.0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/assessment/assessment-page-banner.jpg'),
                  fit: BoxFit.cover)),
        ),
        Container(
          margin: EdgeInsets.only(left: 80.0, top: 220.0),
          color: Colors.white,
          child: OutlineButton(
            padding: EdgeInsets.fromLTRB(104.0, 22.0, 104.0, 22.0),
            child: Text(
              "Contact Us",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {
              print("Contact Us pressed");
            },
            borderSide: BorderSide(
              color: Colors.lightBlue, //Color of the border
              style: BorderStyle.solid, //Style of the border
              width: 4, //width of the border
            ),
          ),
        )
      ],
    );
  }
}

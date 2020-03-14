import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/styles/style.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue, // TODO: change to theme color
      // margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[Text("Social Media Icons")],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              NavLink(navText: "About Us"),
              Text(" | "),
              NavLink(navText: "Contact Us"),
              Text(" | "),
              NavLink(navText: "Become a Trainer Us"),
              Text(" | "),
              NavLink(navText: "Webinars"),
              Text(" | "),
              NavLink(navText: "Privacy Policy "),
              Text(" | "),
              NavLink(navText: "Terms & Conditions"),
              Text(" | "),
              NavLink(navText: "FAQ")
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                "@Tech Prime 2020 All Rights Reserved",
                style: Body1TextStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}

// Nav links for routing to different pages
class NavLink extends StatelessWidget {
  final String navText;

  NavLink({this.navText});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        child: Text(
          navText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () => print(
            "Navigate to page: $navText"), // TODO: implement the route it should navigate to
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_constants.dart';
import 'package:zengage_learning_platform/screens/home/widgets/social_banner.dart';
import 'package:zengage_learning_platform/styles/style.dart';
import 'package:zengage_learning_platform/widgets/navbar/NavLink.dart';

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
            children: <Widget>[
              SocialBanner(),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              NavLink(
                navText: "About Us",
                textColor: Colors.white,
              ),
              Text(" | "),
              NavLink(navText: "Contact Us", textColor: Colors.white),
              Text(" | "),
              NavLink(navText: "Become a Trainer Us", textColor: Colors.white),
              Text(" | "),
              NavLink(navText: "Webinars", textColor: Colors.white),
              Text(" | "),
              NavLink(navText: "Privacy Policy", textColor: Colors.white),
              Text(" | "),
              NavLink(navText: "Terms & Conditions", textColor: Colors.white),
              Text(" | "),
              NavLink(navText: "FAQ", textColor: Colors.white)
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
                copyrightText,
                style: Body1TextStyle,
              )
            ],
          )
        ],
      ),
    );
  }
}

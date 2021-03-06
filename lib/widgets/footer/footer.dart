import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/constants/app_constants.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';
import 'package:zengage_learning_platform/screens/home/widgets/social_banner.dart';
import 'package:zengage_learning_platform/styles/style.dart';
import 'package:zengage_learning_platform/widgets/navbar/NavLink.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: blueThemeColor,
      // margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
      padding: EdgeInsets.only(top: 40.0, bottom: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SocialBanner(),
              ],
            ),
          ),
//          SocialBanner(),
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
                navigateToPage: RouteGenerator.ABOUT_US_ROUTE,
              ),
              Text(" | "),
              NavLink(
                navText: "Contact Us",
                textColor: Colors.white,
                navigateToPage: RouteGenerator.CONTACT_US_ROUTE,
              ),
              Text(" | "),
              NavLink(
                navText: "Become a Trainer",
                textColor: Colors.white,
              ),
              Text(" | "),
              NavLink(
                navText: "Terms & Conditions",
                textColor: Colors.white,
              ),
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

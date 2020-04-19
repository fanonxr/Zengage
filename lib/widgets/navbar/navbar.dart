import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/constants/app_constants.dart';
import 'package:zengage_learning_platform/extensions/hover_extensions.dart';
import 'package:zengage_learning_platform/models/DropDownValueItems.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';
import 'package:zengage_learning_platform/screens/home/widgets/social_banner.dart';
import 'package:zengage_learning_platform/widgets/header/custom_clipper.dart';
import 'package:zengage_learning_platform/widgets/header/sign_in_sign_up.dart';
import 'package:zengage_learning_platform/widgets/navbar/NavLink.dart';
import 'package:zengage_learning_platform/widgets/navbar/NavLinkDropDown.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  NavBar({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight * 2.7),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  String pageText;

  _NavBarState({this.pageText});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, RouteGenerator.HOME_ROUTE);
            },
            child: HandCursor(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80.0,
                    width: 80.0,
                    alignment: Alignment.topCenter,
//            padding: EdgeInsets.only(top: 100.0),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/logos/company-logo.png"),
                            fit: BoxFit.fill)),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 16.0),
                    child: ClipPath(
                      clipper: CustomBottomLeftTriangleClipper(),
                      child: Text(
                        appName,
                        style: TextStyle(
                            color: blueThemeColor,
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                NavLink(
                  navText: "Assessments",
                  navigateToPage: RouteGenerator.ASSESSMENT_ROUTE,
                  isBold: true,
                ),
                NavLinkDropDown(
                  dropDownValue: "Training",
                  menuValueItems: trainingMenuValue,
                ),
                NavLink(
                  navText: "Coaching",
                  navigateToPage: RouteGenerator.COACHING_ROUTE,
                  isBold: true,
                ),
                NavLinkDropDown(
                  dropDownValue: "Resources",
                  menuValueItems: resourceMenuValues,
                ),
//                NavLink(
//                  navText: "Resources",
//                  navigateToPage: RouteGenerator.TRAINING_ROUTE,
//                  isBold: true,
//                ),
              ],
            ),
          ),
          SizedBox(
            width: 16.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              SignInSignUp(),
//              TODO: Add View Courses between the in Blue bg and White Text
              NavLink(
                bgColor: blueThemeColor,
                textColor: Colors.white,
                navText: "View Courses",
                isBold: true,
                navigateToPage: RouteGenerator.UPCOMING_COURSE_ROUTE,
              ),
              SocialBanner(),
            ],
          )
        ],
      ),
    );
  }
}

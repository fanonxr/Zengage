import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/models/DropDownValueItems.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';
import 'package:zengage_learning_platform/widgets/header/sign_in_sign_up.dart';
import 'package:zengage_learning_platform/widgets/navbar/NavLink.dart';
import 'package:zengage_learning_platform/widgets/navbar/NavLinkDropDown.dart';

class NavBar extends StatefulWidget implements PreferredSizeWidget {
  NavBar({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
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
    return AppBar(
        leading: Icon(Icons.accessibility_new),
        actions: <Widget>[
          NavLink(
            navText: "Assessments",
            navigateToPage: RouteGenerator.TRAINING_ROUTE,
            textColor: Colors.black,
          ),
          NavLinkDropDown(
            dropDownValue: "Training",
            menuValueItems: trainingMenuValue,
          ),
          NavLink(
            navText: "Coaching",
            navigateToPage: RouteGenerator.TRAINING_ROUTE,
            textColor: Colors.black,
          ),
          NavLink(
            navText: "Resources",
            navigateToPage: RouteGenerator.TRAINING_ROUTE,
            textColor: Colors.black,
          ),
          SignInSignUp()
        ],
        title: NavLink(
          navText: "Zengage",
          navigateToPage: RouteGenerator.HOME_ROUTE,
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/header/sign_in_sign_up.dart';
import 'package:zengage_learning_platform/widgets/navbar/NavLink.dart';

// method to build the navbar on each page, each page
AppBar buildNavBar(BuildContext context, String pageText) {
  return AppBar(
    leading: Icon(Icons.accessibility_new),
    actions: <Widget>[
      NavLink(
        navText: "Home",
        navigateToPage: () {},
        textColor: Colors.black,
      ),
      NavLink(
        navText: "About",
        navigateToPage: () {},
        textColor: Colors.black,
      ),
      NavLink(
        navText: "Contact Us",
        navigateToPage: () {},
        textColor: Colors.black,
      ),
      SignInSignUp()
    ],
    title: Text(
      pageText,
      style: Theme.of(context).appBarTheme.textTheme.title,
    ),
  );
}

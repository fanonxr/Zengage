import 'package:flutter/material.dart';

// Nav links for routing to different pages
class NavLink extends StatelessWidget {
  final String navText;
  final String navigateToPage;
  final Color textColor;

  NavLink({this.navText, this.navigateToPage, this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        child: Text(
          navText,
          style: TextStyle(color: textColor),
        ),
        onPressed: () => Navigator.popAndPushNamed(context,
            navigateToPage), // TODO: implement the route it should navigate to
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';

// Nav links for routing to different pages
class NavLink extends StatelessWidget {
  final String navText;
  final String navigateToPage;
  final Color textColor;
  final bool isBold;

  NavLink(
      {this.navText,
      this.navigateToPage,
      this.textColor = textGreyColor,
      this.isBold = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialButton(
        child: Text(
          navText,
          style: TextStyle(
              color: textColor,
              fontSize: 18.0,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
        onPressed: () => Navigator.popAndPushNamed(context,
            navigateToPage), // TODO: implement the route it should navigate to
      ),
    );
  }
}

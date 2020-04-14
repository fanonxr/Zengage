import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/extensions/hover_extensions.dart';

// Nav links for routing to different pages
class NavLink extends StatelessWidget {
  final String navText;
  final String navigateToPage;
  final Color textColor;
  final bool isBold;
  final double fontSize;

  NavLink(
      {this.navText,
      this.navigateToPage,
      this.textColor = textGreyColor,
      this.isBold = false,
      this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return HandCursor(
      child: Container(
        child: MaterialButton(
          child: Text(
            navText,
            style: TextStyle(
                color: textColor,
                fontSize: fontSize,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
          onPressed: () => Navigator.popAndPushNamed(context,
              navigateToPage), // TODO: implement the route it should navigate to
        ),
      ),
    );
  }
}

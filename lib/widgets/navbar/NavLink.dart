import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/extensions/hover_extensions.dart';

// Nav links for routing to different pages
class NavLink extends StatelessWidget {
  final String navText;
  final String navigateToPage;
  final Color textColor;
  final Color bgColor;
  final bool isBold;
  final double fontSize;

  NavLink(
      {@required this.navText,
      this.navigateToPage = "/error",
      this.textColor = textGreyColor,
      this.bgColor = Colors.transparent,
      this.isBold = false,
      this.fontSize = 18});

  @override
  Widget build(BuildContext context) {
    return HandCursor(
      child: Container(
        color: bgColor,
        child: MaterialButton(
            child: Text(
              navText,
              style: TextStyle(
                  color: textColor,
                  fontSize: fontSize,
                  fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
            ),
            onPressed: () {
              Navigator.of(context).pushNamed(navigateToPage);
            }),
      ),
    );
  }
}

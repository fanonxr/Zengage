import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';

class BlueBorderWhiteButton extends StatelessWidget {
  BlueBorderWhiteButton(
      {Key key,
      double width = -1.0,
      double height = -1.0,
      String buttonText = "Contact Us",
      String route = "Contact Us"})
      : super(key: key) {
    this.width = width;
    this.height = height;
    this.buttonText = buttonText;
    this.route = route;
  }

  double width;
  double height;
  String buttonText;
  String route;

  @override
  Widget build(BuildContext context) {
    if (width == -1.0) {
      width = MediaQuery.of(context).size.width;
    }
    if (height == -1.0) {
      height = MediaQuery.of(context).size.height;
    }
    return Container(
      color: Colors.white,
      child: OutlineButton(
        padding: EdgeInsets.fromLTRB(
            width * 0.1, height * 0.025, width * 0.1, height * 0.025),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: (width > 700.0) ? 18.0 : 12.0,
              color: textGreyColor,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          print("Contact Us pressed");
          Navigator.of(context).pushNamed(route);
        },
        borderSide: BorderSide(
          color: Colors.lightBlue, //Color of the border
          style: BorderStyle.solid, //Style of the border
          width: 4, //width of the border
        ),
      ),
    );
  }
}

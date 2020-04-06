import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';

class ContactUsImageBanner extends StatelessWidget {
  final String imageLink;

  final bool isButtonTranslucent;

  ContactUsImageBanner(
      {@required this.imageLink, this.isButtonTranslucent = false});

  @override
  Widget build(BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.height / 1.3;
    double imageWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          height: imageHeight,
          width: imageWidth,
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 100.0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imageLink), fit: BoxFit.cover)),
        ),
        BlueBorderWhiteButton(width: imageWidth, height: imageHeight)
      ],
    );
  }
}

class BlueBorderWhiteButton extends StatelessWidget {
  BlueBorderWhiteButton({
    Key key,
    double width = -1.0,
    double height = -1.0,
  }) : super(key: key) {
    this.width = width;
    this.height = height;
  }

  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    if (width == -1.0) {
      width = MediaQuery.of(context).size.width;
    }
    if (height == -1.0) {
      height = MediaQuery.of(context).size.height;
    }
    return Container(
//      margin: EdgeInsets.only(left: width * 0.1, top: height * 0.35),
      color: Colors.white,
      child: OutlineButton(
        padding: EdgeInsets.fromLTRB(
            width * 0.1, height * 0.03, width * 0.1, height * 0.03),
        child: Text(
          "Contact Us",
          style: TextStyle(
              fontSize: (width > 700.0) ? 18.0 : 12.0,
              color: textGreyColor,
              fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          print("Contact Us pressed");
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

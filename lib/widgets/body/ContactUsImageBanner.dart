import 'package:flutter/material.dart';

import 'BlueBorderWhiteButton.dart';

class ContactUsImageBanner extends StatelessWidget {
  final String imageLink;

  ContactUsImageBanner({@required this.imageLink});

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
                  image: NetworkImage(imageLink), fit: BoxFit.cover)),
        ),
        Positioned.fill(
          child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                margin: EdgeInsets.only(
                    right: imageWidth * 0.05, bottom: imageHeight * 0.1),
                child: BlueBorderWhiteButton(
                    width: imageWidth, height: imageHeight),
              )),
        )
      ],
    );
  }
}

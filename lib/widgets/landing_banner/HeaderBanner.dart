import 'package:flutter/material.dart';

class HeaderBanner extends StatelessWidget {
  final String imagePath;
  final String imageCoverText;

  HeaderBanner({this.imagePath, this.imageCoverText = ""});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 100.0),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
      child: Text(
        imageCoverText,
        style: TextStyle(
            color: Colors.lightBlue,
            fontWeight: FontWeight.w600,
            fontSize: 34.0),
      ),
    );
  }
}

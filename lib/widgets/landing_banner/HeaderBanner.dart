import 'package:flutter/material.dart';

buildHeaderBanner(String imagePath, String imageCoverText, context) {
  return Container(
    height: MediaQuery.of(context).size.height / 2.5,
    alignment: Alignment.topCenter,
    padding: EdgeInsets.only(top: 100.0),
    decoration: BoxDecoration(
        image:
            DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
    child: Text(
      imageCoverText,
      style: TextStyle(
          color: Colors.lightBlue, fontWeight: FontWeight.w600, fontSize: 34.0),
    ),
  );
}

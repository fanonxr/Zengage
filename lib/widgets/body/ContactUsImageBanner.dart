import 'package:flutter/material.dart';

class ContactUsImageBanner extends StatelessWidget {
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
                  image: AssetImage(
                      'assets/images/assessment/assessment-page-banner.jpg'),
                  fit: BoxFit.cover)),
        ),
        Container(
          margin:
              EdgeInsets.only(left: imageWidth * 0.1, top: imageHeight * 0.35),
          color: Colors.white,
          child: OutlineButton(
            padding: EdgeInsets.fromLTRB(imageWidth * 0.1, imageHeight * 0.03,
                imageWidth * 0.1, imageHeight * 0.03),
            child: Text(
              "Contact Us",
              style: TextStyle(
                  fontSize: (imageWidth > 700.0) ? 18.0 : 12.0,
                  color: Colors.grey,
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
        )
      ],
    );
  }
}

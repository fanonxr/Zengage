import 'package:flutter/material.dart';

class WhyAssessmentHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.height / 4.5;
    double imageWidth = imageHeight;

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Row(
        children: <Widget>[
          Stack(
            alignment: Alignment(0.0, 0.0),
            children: <Widget>[
              Container(
                child: Image.asset(
                  'assets/images/assessment/why-assessment-header-bg.png',
                  height: imageHeight + 125.0,
                  fit: BoxFit.fill,
                  width: imageWidth + 125.0,
                ),
              ),
              Container(
                height: imageHeight,
                width: imageHeight,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                            "assets/images/assessment/assessment-page-logo.png"))),
              ),
            ],
          ),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 4.0,
                    spreadRadius: 1.0,
                  )
                ],
                shape: BoxShape.rectangle,
              ),
              child: Container(
                padding: EdgeInsets.only(left: 64.0),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Why Assessment?',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22.0),
                    ),
                    Text(
                      'Content will go here',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

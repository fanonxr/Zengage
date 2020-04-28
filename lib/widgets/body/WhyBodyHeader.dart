import 'package:flutter/material.dart';

class WhyBodyHeader extends StatelessWidget {
  final String topImageLink;
  final String headerText;
  final String bodyText;

  WhyBodyHeader(
      {@required this.topImageLink,
      this.headerText = 'Why Assessment',
      this.bodyText = 'Content will go here'});

  @override
  Widget build(BuildContext context) {
    double imageHeight = MediaQuery.of(context).size.height / 4.5;
    double imageWidth = imageHeight;

    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: EdgeInsets.only(left: imageHeight + 40, right: 128.0),
//              height: MediaQuery.of(context).size.height * 0.35,
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
                padding: EdgeInsets.only(
                    left: 64.0, right: 32.0, bottom: 32.0, top: 32.0),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      headerText,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22.0),
                    ),
                    Container(
                      height: 32.0,
                    ),
                    Text(
                      bodyText,
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Stack(
              alignment: Alignment(0.0, 0.0),
              children: <Widget>[
                Container(
                  child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/zengage-learning.appspot.com/o/assessment%2Fwhy-assessment-header-bg.png?alt=media&token=7c2e9fd3-5200-446f-8ca3-3d9d20239d40',
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
                          fit: BoxFit.cover,
                          image: NetworkImage(topImageLink))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

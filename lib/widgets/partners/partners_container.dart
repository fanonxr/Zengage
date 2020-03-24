import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PartnersContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0),
      height: MediaQuery.of(context).size.height / 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Our Partners",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w400),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Divider(
              color: Colors.blue,
              thickness: 10.0,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ImageBadge(
                imagePath: "assets/images/homepage/leading-logo.png",
              ),
              ImageBadge(
                imagePath: "assets/images/homepage/hp-banner-1.jpg",
              ),
              ImageBadge(
                imagePath: "assets/images/homepage/hp-banner-1.jpg",
              )
            ],
          ),
        ],
      ),
    );
  }
}

class ImageBadge extends StatelessWidget {
  final String imagePath;

  ImageBadge({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width / 5,
        child: Image.asset(imagePath));
  }
}

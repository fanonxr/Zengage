import 'package:flutter/material.dart';

class MissionContainer extends StatelessWidget {
  final String imagePath;

  MissionContainer({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 50.0),
      height: MediaQuery.of(context).size.height / 2,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MissionButton(
                buttonText: "Who We are",
              ),
              MissionButton(
                buttonText: "What We do",
              ),
              MissionButton(
                buttonText: "Contact us",
              )
            ],
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Our Mission:",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w800),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 4,
                  child: Text(
                    "We will guide you and your organzation in your quest to implement an Agile environment. We will help you assess your current state, provide training to elevate your knowledge of Agile tools and practices, and offer individualized coaching as you roll out Agile. We are dedicated to helping you succeed!",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MissionButton extends StatelessWidget {
  final String buttonText;

  MissionButton({this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: Material(
          color: Colors.lightBlue,
          elevation: 5.0,
          child: MaterialButton(
            onPressed: () {
              //Implement login functionality.
            },
            minWidth: 200.0,
            height: 72.0,
            child: Text(
              buttonText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MissionContainer extends StatelessWidget {
  final String imagePath;

  MissionContainer({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  "Our Mission \n We Will guide you and your organzation in your quest to implement an agile environment. We will help you...")
            ],
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
      width: MediaQuery.of(context).size.width / 3,
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

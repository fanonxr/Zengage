import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderContent extends StatelessWidget {
  final String imagePath;
  final String headlineText;
  final String buttonText;
  final String route;
  SliderContent(
      {this.imagePath, this.headlineText, this.buttonText, this.route});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      alignment: Alignment.topRight,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 75.0, right: 50.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Text(
                headlineText,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.0,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 7,
                height: MediaQuery.of(context).size.height / 13,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.0),
                      side: BorderSide(color: Colors.blue)),
                  color: Color(0xf6f8fa),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.pushNamed(context, route);
                  },
                  child: Text(
                    buttonText.toUpperCase(),
                    style: TextStyle(
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

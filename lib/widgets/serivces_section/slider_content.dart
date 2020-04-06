import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/body/BlueBorderWhiteButton.dart';

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
        padding: EdgeInsets.only(top: 75.0, bottom: 45.0, right: 50.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Align(
                alignment: Alignment.bottomRight,
                child: BlueBorderWhiteButton(
                    buttonText: buttonText.toUpperCase(), route: route),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

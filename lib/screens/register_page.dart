import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  WelcomeBanner(
                      imageLink:
                          'assets/images/register/register-page-image.jpg')
                ],
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeBanner extends StatelessWidget {
  final String imageLink;

  const WelcomeBanner({Key key, this.imageLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//    double imageHeight = MediaQuery.of(context).size.height / 1.3;
//    double imageWidth = MediaQuery.of(context).size.width;
    double imageHeight = 250.0;
    double imageWidth = 450.0;
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: imageHeight,
            width: imageWidth,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 100.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageLink), fit: BoxFit.cover)),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 160.0),
              padding: EdgeInsets.only(left: 32.0),
              color: bgGreyColor,
              height: imageHeight - 50.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GreyBoldText(text: 'Welcome!'),
                  GreyBoldText(text: 'Register below to create your account.')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GreyBoldText extends StatelessWidget {
  final String text;

  const GreyBoldText({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Text(
        text,
        style: TextStyle(
            color: textGreyColor, fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    );
  }
}

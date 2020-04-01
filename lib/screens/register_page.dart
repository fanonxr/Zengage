import 'dart:html';

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
                          'assets/images/register/register-page-image.jpg'),
                  RegistrationForm(),
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
                  GreyBoldText('Welcome!'),
                  GreyBoldText('Register below to create your account.')
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

  const GreyBoldText(this.text);

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

class RegistrationForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final registrationFormItems = [
      RegistrationFormItem(labelText: "Full name"),
      RegistrationFormItem(labelText: "Email"),
      RegistrationFormItem(labelText: "Password", obscureText: true),
      RegistrationFormItem(labelText: "Country"),
      RegistrationFormItem(labelText: "Mailing Address", isOptional: true),
      RegistrationFormItem(labelText: "Contact Number", isOptional: true),
      RegistrationFormItem(labelText: "Courses", isOptional: true),
      RegistrationFormItem(
          labelText: "Payment info", hintText: "Card Number", isOptional: true)
    ];
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
              top: 32.0,
              bottom: 32.0,
              left: MediaQuery.of(context).size.width * 0.05),
          width: MediaQuery.of(context).size.width * 0.65,
          child: ListView.builder(
              itemCount: registrationFormItems.length,
              shrinkWrap: true,
              itemBuilder: (context, position) {
                return Container(
                  margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                          width: MediaQuery.of(context).size.width * 0.10,
                          child: GreyBoldText(
                              registrationFormItems[position].getLabelText)),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        padding: EdgeInsets.all(4.0),
                        color: bgGreyColor,
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                              hintText:
                                  registrationFormItems[position].hintText),
                          obscureText:
                              registrationFormItems[position].obscureText,
                        ),
                      )
                    ],
                  ),
                );
              }),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: bgGreyColor,
                width: MediaQuery.of(context).size.width * 0.55 / 4,
                child: TextField(
                  decoration:
                      InputDecoration.collapsed(hintText: "Month | Day"),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 48.0,
              ),
              Container(
                color: bgGreyColor,
                width: MediaQuery.of(context).size.width * 0.55 / 4,
                child: TextField(
                  textAlign: TextAlign.center,
                  decoration: InputDecoration.collapsed(
                    hintText: 'CVV',
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 32.0, bottom: 64.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                  child: Text(
                    'Reset',
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                  height: 56.0,
                  minWidth: MediaQuery.of(context).size.width * 0.55 / 4,
                  color: darkGreyColor,
                  onPressed: () {
                    print("Reset clicked");
                  }),
              Container(
                width: 48.0,
              ),
              MaterialButton(
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white, fontSize: 22.0),
                  ),
                  height: 56.0,
                  minWidth: MediaQuery.of(context).size.width * 0.55 / 4,
                  color: darkGreyColor,
                  onPressed: () {
                    print("Register clicked");
                  }),
            ],
          ),
        ),
      ],
    );
  }
}

class RegistrationFormItem {
  String labelText;
  String hintText;
  bool isOptional;
  bool obscureText;

  RegistrationFormItem(
      {@required this.labelText,
      this.hintText = '',
      this.isOptional = false,
      this.obscureText = false});

  String get getLabelText => isOptional ? '$labelText:' : "*$labelText:";
}

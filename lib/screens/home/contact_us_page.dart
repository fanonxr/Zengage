import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/screens/home/widgets/social_banner.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/landing_banner/HeaderBanner.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

import '../register_page.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: NavBar(),
            body: ListView(
              children: <Widget>[
                HeaderBanner(
                  imagePath: "assets/images/contactus/contact-us-banner.jpg",
                ),
                ContactUsForm(),
                Footer()
              ],
            )));
  }
}

class ContactUsForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final registrationFormItems = [
      FormItem(labelText: "Full name"),
      FormItem(labelText: "Email"),
      FormItem(labelText: "Phone Number"),
      FormItem(labelText: "Country"),
      FormItem(labelText: "Message", isMessage: true),
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
                return FormItemField(
                  registrationFormItem: registrationFormItems[position],
                );
              }),
        ),
        Container(
          margin: EdgeInsets.only(top: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GreyButton(
                text: 'Submit',
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 64.0, bottom: 64.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GreyBoldText(
                text: "Connect on Social",
              ),
              SizedBox(
                width: 32.0,
              ),
              SocialBanner()
            ],
          ),
        ),
      ],
    );
  }
}

class GreyButton extends StatelessWidget {
  final String text;

  Function onPressed;

  GreyButton({@required this.text, this.onPressed}) {
    if (onPressed == null) {
      onPressed = () {
        print("$text clicked");
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 22.0),
        ),
        height: 56.0,
        minWidth: MediaQuery.of(context).size.width * 0.55 / 4,
        color: darkGreyColor,
        onPressed: onPressed);
  }
}

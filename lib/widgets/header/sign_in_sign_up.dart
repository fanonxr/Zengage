import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/constants/app_constants.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';
import 'package:zengage_learning_platform/styles/style.dart';

class SignInSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        BlueHeaderText(
          text: signUp,
          onPressed: () {
            print("$signUp clicked");
            Navigator.popAndPushNamed(
                context, RouteGenerator.REGISTRATION_ROUTE);
          },
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(4.0, 10.0, 4.0, 10.0),
          child: Container(
            width: 3,
            height: 12,
            color: AppBarStyle.color,
          ),
        ),
        BlueHeaderText(
          text: signIn,
          onPressed: () {
            print("$signIn clicked");
          },
        ),
      ],
    );
  }
}

class BlueHeaderText extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  BlueHeaderText({this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      hoverColor: bgGreyColor,
      textColor: AppBarStyle.color,
      textTheme: ButtonTextTheme.normal,
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}

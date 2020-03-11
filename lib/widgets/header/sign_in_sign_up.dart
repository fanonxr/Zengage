import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_constants.dart';
import 'package:zengage_learning_platform/styles/style.dart';

class SignInSignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: <Widget>[
          BlueHeaderText(text: signUp),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 10.0),
            child: Container(
              width: 2,
              height: 12,
              color: AppBarStyle.color,
            ),
          ),
          BlueHeaderText(text: signIn),
        ],
      ),
    );
  }
}

class BlueHeaderText extends StatelessWidget {
  final String text;

  BlueHeaderText({this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: AppBarStyle.color, fontSize: 16),
    );
  }
}

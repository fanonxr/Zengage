import 'package:flutter/material.dart';

class SocialBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SocialHolder(),
        SocialHolder(),
        SocialHolder(),
        SocialHolder(),
        SocialHolder(),
      ],
    );
  }
}

class SocialHolder extends StatelessWidget {
  /// Background color of Social
  final Color backGround;
  final Image foreGroundImage;

  SocialHolder({this.backGround = Colors.grey, this.foreGroundImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: CircleAvatar(
          backgroundColor: this.backGround,
          child: Text(
            'f',
            style: TextStyle(fontSize: 22, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

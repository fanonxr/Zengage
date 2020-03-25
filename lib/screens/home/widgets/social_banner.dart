import 'package:flutter/material.dart';

class SocialBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SocialHolder(
            assetPath: 'assets/images/logos/social/social-facebook.png'),
        SocialHolder(
          assetPath: 'assets/images/logos/social/social-twitter.png',
        ),
        SocialHolder(
          assetPath: 'assets/images/logos/social/social-linkedin.png',
        ),
        SocialHolder(
          assetPath: 'assets/images/logos/social/social-youtube.png',
        ),
      ],
    );
  }
}

class SocialHolder extends StatelessWidget {
  final String assetPath;

  SocialHolder({this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Image.asset(
          assetPath,
          width: 40.0,
          height: 40.0,
        ),
      ),
    );
  }
}

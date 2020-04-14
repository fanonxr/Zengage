import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/extensions/hover_extensions.dart';

class SocialBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socialLinks = [
      'assets/images/logos/social/social-facebook.png',
      'assets/images/logos/social/social-twitter.png',
      'assets/images/logos/social/social-linkedin.png',
      'assets/images/logos/social/social-youtube.png'
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SocialHolder(assetPath: socialLinks[0]),
        SocialHolder(assetPath: socialLinks[1]),
        SocialHolder(assetPath: socialLinks[2]),
        SocialHolder(assetPath: socialLinks[3]),
      ],
    );
  }
}

class SocialHolder extends StatelessWidget {
  final String assetPath;

  SocialHolder({this.assetPath});

  @override
  Widget build(BuildContext context) {
    return HandCursor(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Image.asset(
            assetPath,
            width: 40.0,
            height: 40.0,
          ),
        ),
      ),
    );
  }
}

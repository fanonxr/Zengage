import 'package:flutter/material.dart';

class SocialBanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final socialLinks = [
      'assets/images/logos/social/social-facebook.png',
      'assets/images/logos/social/social-twitter.png',
      'assets/images/logos/social/social-linkedin.png',
      'assets/images/logos/social/social-youtube.png'
    ];

    return Expanded(
      child: Row(
        children: <Widget>[
          ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: socialLinks.length,
            itemBuilder: (BuildContext context, int index) {
              return SocialHolder(assetPath: socialLinks[index]);
            },
          ),
        ],
      ),
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

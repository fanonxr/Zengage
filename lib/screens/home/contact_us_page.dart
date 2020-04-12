import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/landing_banner/HeaderBanner.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

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

              ],
            )));
  }
}

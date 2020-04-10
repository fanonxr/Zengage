import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/landing_banner/HeaderBanner.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

class AboutUsPage extends StatelessWidget {
  List<Widget> aboutUsWidgets = [
    HeaderBanner(
      imagePath: "assets/images/upcomingpage/upcoming-courses-banner.jpg",
      imageCoverText: "",
    ),
    Footer(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                child: aboutUsWidgets[index],
              );
            },
            itemCount: aboutUsWidgets.length,
          ),
        ),
      ),
    );
  }
}

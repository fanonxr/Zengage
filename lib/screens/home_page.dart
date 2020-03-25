import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/inspire_section/inspire_container.dart';
import 'package:zengage_learning_platform/widgets/landing_banner/HeaderBanner.dart';
import 'package:zengage_learning_platform/widgets/mission_container/MissionContainer.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';
import 'package:zengage_learning_platform/widgets/partners_section/PartnerContainer.dart';
import 'package:zengage_learning_platform/widgets/serivces_section/SeviceContainer.dart';
import 'package:zengage_learning_platform/widgets/slider_section/slider_container.dart';
import 'package:zengage_learning_platform/widgets/stay_connected_section/stay_connected.dart';

/// Home page placeholder
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildNavBar(context),
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  buildHeaderBanner(
                      "assets/images/homepage/hp-banner-1.jpg",
                      "THIS IS WHERE YOU START THINKING DIFFERENT \n TRAIN, TRANSFORM, PERFORM AND EVOlVE",
                      context),
                  buildSliderContainer(context),
                  ServiceContainer(),
                  MissionContainer(
                    imagePath: "assets/images/homepage/hp-banner-2.jpg",
                  ),
                  PartnersContainer(),
                  InspiredContainer(),
                  StayConnected(
                    backgroundImagePath:
                        "assets/images/homepage/hp-banner-4.jpg",
                    avatarImagePath: "assets/images/homepage/hp-banner-3.jpg",
                  ),
                  Footer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

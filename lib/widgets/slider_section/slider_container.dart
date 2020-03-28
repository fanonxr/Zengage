import 'package:flutter/material.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:zengage_learning_platform/widgets/mission_container/MissionContainer.dart';
import 'package:zengage_learning_platform/widgets/partners_section/PartnerContainer.dart';
import 'package:zengage_learning_platform/widgets/serivces_section/SeviceContainer.dart';

class SliderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      child: GFCarousel(
        autoPlay: true,
        aspectRatio: 1 / .35,
        viewportFraction: 1.0,
        enlargeMainPage: true,
        pagination: true,
        items: <Widget>[
          MissionContainer(imagePath: "assets/images/homepage/hp-banner-2.jpg"),
          ServiceContainer(),
          PartnersContainer(),
        ],
        onPageChanged: (index) {},
      ),
    );
  }
}

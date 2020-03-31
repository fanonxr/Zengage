import 'package:flutter/material.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:zengage_learning_platform/widgets/landing_banner/HeaderBanner.dart';
import 'package:zengage_learning_platform/widgets/mission_container/MissionContainer.dart';

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
          HeaderBanner(
            imagePath: "assets/images/homepage/hp-banner-1.jpg",
            imageCoverText:
                "THIS IS WHERE YOU START THINKING DIFFERENT \n TRAIN, TRANSFORM, PERFORM AND EVOlVE",
          ),
          MissionContainer(imagePath: "assets/images/homepage/hp-banner-2.jpg"),
        ],
        onPageChanged: (index) {},
      ),
    );
  }
}

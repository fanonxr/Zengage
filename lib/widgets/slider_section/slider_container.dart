import 'package:flutter/material.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';
import 'package:zengage_learning_platform/widgets/landing_banner/HeaderBanner.dart';
import 'package:zengage_learning_platform/widgets/mission_container/MissionContainer.dart';
import 'package:zengage_learning_platform/widgets/serivces_section/slider_content.dart';

class SliderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.5,
      child: GFCarousel(
        autoPlay: true,
        aspectRatio: 3 / 1,
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
          SliderContent(
            imagePath: "assets/images/homepage/hp-banner-3.jpg",
            headlineText: "Browse the courses that will enable you to succeed!",
            buttonText: "VIEW COURSES",
            route: RouteGenerator.COURSE_ROUTE,
          ),
          SliderContent(
            imagePath: "assets/images/homepage/scrolling-3.jpg",
            headlineText:
                "Shed light onto your future! Discover our offerings!",
            buttonText: "Our Offerings",
            route: RouteGenerator.TRAINING_ROUTE,
          ),
        ],
        onPageChanged: (index) {},
      ),
    );
  }
}

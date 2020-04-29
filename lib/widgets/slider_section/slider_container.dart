import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';
import 'package:zengage_learning_platform/widgets/landing_banner/HeaderBanner.dart';
import 'package:zengage_learning_platform/widgets/mission_container/MissionContainer.dart';
import 'package:zengage_learning_platform/widgets/serivces_section/slider_content.dart';

class SliderContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselWithIndicator(),
    );
  }
}

class AutoCarousel extends StatelessWidget {
  final Function onPageChangedCallback;

  final double height;

  AutoCarousel({this.height, this.onPageChangedCallback});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        enableInfiniteScroll: true,
        autoPlay: true,
        height: MediaQuery.of(context).size.height / 1.5,
        autoPlayInterval: Duration(seconds: 4),
        enlargeCenterPage: true,
        onPageChanged: onPageChangedCallback,
        aspectRatio: 3 / 1,
        viewportFraction: 1.0,
        pauseAutoPlayOnTouch: Duration(seconds: 10),
        items: <Widget>[
          HeaderBanner(
            imagePath: "assets/images/homepage/hp-banner-1.jpg",
            imageCoverText:
                "THIS IS WHERE YOU START THINKING DIFFERENT \n TRAIN, TRANSFORM, PERFORM AND EVOLVE",
          ),
          MissionContainer(imagePath: "assets/images/homepage/hp-banner-2.jpg"),
          SliderContent(
            imagePath: "assets/images/homepage/hp-banner-3.jpg",
            headlineText: "Browse the courses that will enable you to succeed!",
            buttonText: "VIEW COURSES",
            route: RouteGenerator.UPCOMING_COURSE_ROUTE,
          ),
          SliderContent(
            imagePath: "assets/images/homepage/scrolling-3.jpg",
            headlineText:
                "Shed light onto your future! Discover our offerings!",
            buttonText: "Our Offerings",
            route: RouteGenerator.TRAINING_ROUTE,
          ),
        ]);
  }
}

class CarouselWithIndicator extends StatefulWidget {
  @override
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      AutoCarousel(
        onPageChangedCallback: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
      Positioned.fill(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            color: textGreyColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Container>.generate(
                4,
                (index) => Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == index ? blueThemeColor : Colors.white),
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}

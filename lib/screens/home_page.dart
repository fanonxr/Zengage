import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:zengage_learning_platform/models/Course.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/inspire_section/inspire_container.dart';
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
  List<Widget> homePageWidgets = [
    SliderContainer(),
    ServiceContainer(),
    PartnersContainer(),
    InspiredContainer(),
    StayConnected(
      backgroundImagePath: "assets/images/homepage/hp-banner-4.jpg",
      avatarImagePath: "assets/images/homepage/hp-banner-3.jpg",
    ),
    Footer(),
  ];

  @override
  void initState() {
    super.initState();
    print("Home Page");
    readFileContents("assets/content/courses.json").then((value) {
      print("Data read from the file is:");
      final decoded = jsonDecode(value) as List;
      decoded.forEach((element) {
        Course test = new Course.fromJson(element);
        print(test);
      });
    });
  }

  Future<String> readFileContents(String filePath) async {
    return rootBundle.loadString(filePath);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              child: homePageWidgets[index],
            );
          },
          itemCount: homePageWidgets.length,
        ),
      ),
    );
  }
}

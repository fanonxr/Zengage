import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/landing_banner/HeaderBanner.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

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
        appBar: NavBar(),
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  buildHeaderBanner(
                      "assets/images/homepage/hp-banner-1.jpg",
                      "THIS IS WHERE YOU START THINKING DIFFERENT \n TRAIN, TRANSFORM, PERFORM AND EVOlVE",
                      context),
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

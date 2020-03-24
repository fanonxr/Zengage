import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';
import 'package:zengage_learning_platform/widgets/stay_connected/stay_connected.dart';

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
        appBar: buildNavBar(context, "Home"),
        body: Container(
          child: Column(
            children: <Widget>[
              StayConnected(
                backgroundImagePath: "assets/images/homepage/hp-banner-4.jpg",
                avatarImagePath: "assets/images/homepage/hp-banner-3.jpg",
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}

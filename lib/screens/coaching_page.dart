import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

class CoachingPage extends StatefulWidget {
  @override
  _CoachingPageState createState() => _CoachingPageState();
}

class _CoachingPageState extends State<CoachingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: Text("Coaching Page"),
        ),
      ),
    );
  }
}

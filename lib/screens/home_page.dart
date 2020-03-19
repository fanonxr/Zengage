import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
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
          child: Column(
            children: <Widget>[Footer()],
          ),
        ),
      ),
    );
  }
}
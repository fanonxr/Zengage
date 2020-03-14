import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/header/sign_in_sign_up.dart';

/// Home page placeholder
class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.accessibility_new),
          actions: <Widget>[
            MaterialButton(onPressed: () {}, child: Text('Home')),
            MaterialButton(onPressed: () {}, child: Text('About')),
            MaterialButton(onPressed: () {}, child: Text('Contact Us')),
            SignInSignUp()
          ],
          title: Text(
            widget.title,
            style: Theme.of(context).appBarTheme.textTheme.title,
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[Footer()],
          ),
        ),
      ),
    );
  }
}

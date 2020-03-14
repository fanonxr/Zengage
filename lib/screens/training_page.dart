import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

class TrainingPage extends StatefulWidget {
  @override
  _TrainingPageState createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildNavBar(context, "Training"),
        body: Container(
          child: Text("Training Page"),
        ),
      ),
    );
  }
}

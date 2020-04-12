import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(child: Text('Contact us')),
      ),
    );
  }
}

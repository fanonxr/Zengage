import 'package:flutter/material.dart';

class TrainingBadgeItem extends StatelessWidget {
  final String badgeTile;
  final String imagePath;

  TrainingBadgeItem({this.badgeTile, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 5.5,
        height: MediaQuery.of(context).size.width / 6.5,
        child: Column(
          children: <Widget>[
            Text(
              badgeTile,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10.0,
            ),
            CircleAvatar(
              radius: MediaQuery.of(context).size.width / 20,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(imagePath),
            ),
          ],
        ));
  }
}

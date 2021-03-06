import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/models/Course.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';

class TrainingBadgeItem extends StatelessWidget {
  final String badgeTile;
  final String imagePath;
  final Course course;

  TrainingBadgeItem({this.badgeTile, this.imagePath, this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width / 5.5,
        height: MediaQuery.of(context).size.width / 6.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: Text(
                badgeTile,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            FlatButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                    RouteGenerator.COURSE_DETAILS_ROUTE,
                    arguments: course);
              },
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width / 20,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage(imagePath),
              ),
            ),
          ],
        ));
  }
}

class PartnerAssetLogo extends StatelessWidget {
  final String imagePath;

  const PartnerAssetLogo({Key key, @required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: MediaQuery.of(context).size.width / 20,
      backgroundColor: Colors.white,
      backgroundImage: AssetImage(imagePath),
    );
  }
}

class PartnerLogoNetwork extends StatelessWidget {
  final String imageUrl;

  const PartnerLogoNetwork({Key key, @required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 20,
      height: MediaQuery.of(context).size.width / 20,
      child: CircleAvatar(
        radius: MediaQuery.of(context).size.width / 20,
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage(imageUrl),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ServiceContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Our Services"),
          SizedBox(
            height: 35.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ServiceItem(
                serviceInfoTitle: "Assesments",
                imagePath: "assets/images/homepage/light-bulb-img.png",
                serviceItemInfo:
                    "Embedded in the Agile principles is the concept of reflection, feedback and continuous improvement."
                    "The best way to progress is to assess your current Agile environment in order to identify areas for improvement."
                    "Knowlege gained from assessments help you and your organzation progress with Agile...",
              ),
              ServiceItem(
                serviceInfoTitle: "Training",
                imagePath: "assets/images/homepage/hp-training.png",
                serviceItemInfo:
                    "Getting the most out of the Agile process requires new skills and techniques. Our Trainers will give you the training you need, keeping you engaged and energized as you progress toward your Agile certifications.  ...more",
              ),
              ServiceItem(
                serviceInfoTitle: "Coaching",
                imagePath: "assets/images/homepage/hp-coaching.jpg",
                serviceItemInfo:
                    "There's no need to take the journey toward an Agile organzation alone. We can coach your leaders and individual team members and help you realize better outcomes. ...more",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ServiceItem extends StatelessWidget {
  final String serviceInfoTitle;
  final String serviceItemInfo;
  final String imagePath;

  ServiceItem({this.serviceItemInfo, this.imagePath, this.serviceInfoTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(serviceInfoTitle),
          SizedBox(
            height: 25.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            height: MediaQuery.of(context).size.height / 5,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(imagePath),
              // child: Image.asset(imagePath),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width / 5,
            color: Colors.grey,
            padding: EdgeInsets.all(20.0),
            constraints: BoxConstraints(minWidth: 150.0, minHeight: 150.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  serviceItemInfo,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
        ],
      ),
    );
  }
}

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
          Text(
            "Our Services",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 28.0,
                fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Divider(
              color: Colors.blue,
              thickness: 10.0,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ServiceItem(
                serviceInfoTitle: "Assessments",
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
      height: MediaQuery.of(context).size.height / 1.5,
      width: MediaQuery.of(context).size.width / 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            serviceInfoTitle,
            style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            // color: Colors.white,
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width / 20,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(imagePath),
              // child: Image.asset(imagePath),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 5.5,
            width: MediaQuery.of(context).size.width / 5.5,
            color: Colors.grey[200],
            padding: EdgeInsets.all(20.0),
            constraints: BoxConstraints(minWidth: 150.0, minHeight: 150.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 7.5,
                  width: MediaQuery.of(context).size.width / 7.5,
                  child: Text(
                    serviceItemInfo,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

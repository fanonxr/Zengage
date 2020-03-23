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
                imagePath: "imagePath",
                serviceItemInfo: "Placeholder info",
              ),
              ServiceItem(
                serviceInfoTitle: "Training",
                imagePath: "imagePath",
                serviceItemInfo: "Placeholder info",
              ),
              ServiceItem(
                serviceInfoTitle: "Coaching",
                imagePath: "imagePath",
                serviceItemInfo: "Placeholder info",
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
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(imagePath),
              child: Text("A"),
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
            child: (Text(serviceItemInfo)),
          ),
          SizedBox(
            height: 25.0,
          ),
        ],
      ),
    );
  }
}

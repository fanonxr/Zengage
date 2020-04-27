import 'package:flutter/material.dart';

class InspiredContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      height: MediaQuery.of(context).size.height / 2.5,
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Get Inspiried",
            style: TextStyle(
                color: Colors.black87,
                fontSize: 28.0,
                fontWeight: FontWeight.w900),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2,
            child: Divider(
              color: Colors.blue,
              thickness: 10.0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                buildPersonBadge(
                    "assets/images/homepage/person-3.png",
                    "\n \n Amazing courses! \n I can't believe how far I've improved.",
                    context),
                buildPersonBadge(
                    "assets/images/homepage/person-4.png",
                    "\n \n Helped changed my professional \n career for the better",
                    context),
                buildPersonBadge("assets/images/homepage/person-2.png",
                    "\n \n Scum newbie to \n scrum master. \n ", context),
                buildPersonBadge(
                    "assets/images/homepage/person-1.png",
                    "\n \n Agile is the way \n and Agile Tech Prime knows \n what they are doing!",
                    context)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildPersonBadge(String imagePath, String inspireText, context) {
  return Column(
    children: <Widget>[
      Container(
        width: MediaQuery.of(context).size.width / 5,
        height: MediaQuery.of(context).size.height / 6,
        color: Colors.white,
        child: Container(
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Image.asset(imagePath),
          ),
        ),
      ),
      Text(
        inspireText,
        style: TextStyle(color: Colors.black87),
      )
    ],
  );
}

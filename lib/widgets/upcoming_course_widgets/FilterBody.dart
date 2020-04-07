import 'package:flutter/material.dart';

class FilterBody extends StatelessWidget {
  final List<CourseItem> courseItems;

  FilterBody({this.courseItems});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            child: courseItems[index],
          );
        },
        itemCount: courseItems.length,
      ),
    );
  }
}

class CourseItem extends StatelessWidget {
  final String courseImage;
  final String nameOfCourse;
  final String dateOfCourse;
  final String city;

  CourseItem(
      {this.courseImage, this.nameOfCourse, this.dateOfCourse, this.city});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 3,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width / 20,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(courseImage),
            ),
          ),
          Container(
            color: Color(0xfff6f8fa),
            width: MediaQuery.of(context).size.width / 1.3,
            height: MediaQuery.of(context).size.height / 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text(
                    nameOfCourse,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w900,
                        fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text(
                    dateOfCourse,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontSize: 20.0),
                  ),
                ),
                Container(
                  child: Text(
                    city,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w100,
                        fontSize: 20.0),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    padding: const EdgeInsets.all(8.0),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {},
                    child: Text("REGISTER"),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

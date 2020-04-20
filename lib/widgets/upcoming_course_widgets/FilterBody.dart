import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';

class FilterBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CourseItem(
            courseImage:
                "assets/images/trainingpage/course-logos/leading-safe.png",
            nameOfCourse: "Leading SAFe 5.0 with Agile Certification",
            city: "Boston",
            dateOfCourse: "November 8th, 2020",
          ),
          CourseItem(
            courseImage:
                "assets/images/trainingpage/course-logos/safe-for-teams.png",
            nameOfCourse: "Leading SAFe 5.0 with Agile Certification",
            city: "Los Angeles",
            dateOfCourse: "March 28th, 2021",
          ),
          CourseItem(
            courseImage:
                "assets/images/trainingpage/course-logos/lean-portfolio-management.png",
            nameOfCourse: "Leading SAFe 5.0 with Agile Certification",
            city: "San Francisco",
            dateOfCourse: "June 24th, 2020",
          ),
          CourseItem(
            courseImage:
                "assets/images/trainingpage/course-logos/prof-scrum-master.png",
            nameOfCourse: "Leading SAFe 5.0 with Agile Certification",
            city: "Hamden",
            dateOfCourse: "August 18th, 2020",
          ),
          CourseItem(
            courseImage:
                "assets/images/trainingpage/course-logos/prof-scrum-product-owner.png",
            nameOfCourse: "Leading SAFe 5.0 with Agile Certification",
            city: "New York City",
            dateOfCourse: "April 12th, 2020",
          ),
          CourseItem(
            courseImage:
                "assets/images/trainingpage/course-logos/prof-scrum-developer.png",
            nameOfCourse: "Leading SAFe 5.0 with Agile Certification",
            city: "Chicago",
            dateOfCourse: "July 6th, 2020",
          ),
          CourseItem(
            courseImage:
                "assets/images/trainingpage/course-logos/certified-scrum-master.png",
            nameOfCourse: "Leading SAFe 5.0 with Agile Certification",
            city: "Compton",
            dateOfCourse: "September 19th, 2020",
          ),
          CourseItem(
            courseImage:
                "assets/images/trainingpage/course-logos/certified-scrum-product-owner.png",
            nameOfCourse: "Leading SAFe 5.0 with Agile Certification",
            city: "Palm Dale",
            dateOfCourse: "November 18th, 2020",
          ),
          CourseItem(
            courseImage:
                "assets/images/trainingpage/course-logos/certified-scrum-developer.png",
            nameOfCourse: "Leading SAFe 5.0 with Agile Certification",
            city: "Hollywood",
            dateOfCourse: "October 12th, 2020",
          ),
          CourseItem(
            courseImage:
                "assets/images/trainingpage/course-logos/proj-management-proposal.png",
            nameOfCourse: "Leading SAFe 5.0 with Agile Certification",
            city: "Salt Lake City",
            dateOfCourse: "Decemeber 15th, 2020",
          ),
          CourseItem(
            courseImage: "assets/images/trainingpage/course-logos/pmi-acp.png",
            nameOfCourse: "Leading SAFe 5.0 with Agile Certification",
            city: "Seattle",
            dateOfCourse: "May 13th, 2020",
          ),
        ],
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
                    onPressed: () {
                      Navigator.of(context)
                          .pushNamed(RouteGenerator.REGISTRATION_ROUTE);
                    },
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

import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/upcoming_course_widgets/FilterBody.dart';

class CourseTabBar extends StatefulWidget {
  @override
  _CourseTabBarState createState() => _CourseTabBarState();
}

class _CourseTabBarState extends State<CourseTabBar>
    with TickerProviderStateMixin {
  TabController _nestedTabController;
  @override
  void initState() {
    super.initState();
    _nestedTabController = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _nestedTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width / 1,
          alignment: Alignment.center,
          color: Colors.blue,
          child: TabBar(
            controller: _nestedTabController,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black54,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: "All Courses",
              ),
              Tab(
                text: "Public",
              ),
              Tab(
                text: "Private",
              ),
              Tab(
                text: "Corporate",
              ),
            ],
          ),
        ),
        Container(
          height: screenHeight * 0.70,
          margin: EdgeInsets.only(left: 16.0, right: 16.0),
          child: TabBarView(
            controller: _nestedTabController,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: FilterBody(
                  courseItems: allCourses,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: FilterBody(
                  courseItems: publicCourses,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: FilterBody(
                  courseItems: privateCourses,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: FilterBody(
                  courseItems: corporateCourses,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

List<CourseItem> allCourses = [
  CourseItem(
    courseImage: "assets/images/trainingpage/course-logos/leading-safe.png",
    nameOfCourse: "Leading SAFe 5.0 with Agile Certification",
    city: "Boston",
    dateOfCourse: "November 8th, 2020",
  ),
  CourseItem(
    courseImage: "assets/images/trainingpage/course-logos/safe-for-teams.png",
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
    nameOfCourse: "Customized Scrum/Kanban Workshop",
    city: "Seattle",
    dateOfCourse: "May 13th, 2020",
  ),
];

List<CourseItem> publicCourses = [
  allCourses[0],
  allCourses[1],
  allCourses[2],
  allCourses[3],
];

List<CourseItem> privateCourses = [];

List<CourseItem> corporateCourses = [
  allCourses[4],
  allCourses[5],
  allCourses[6],
  allCourses[7],
  allCourses[8],
  allCourses[9],
  allCourses[10],
];

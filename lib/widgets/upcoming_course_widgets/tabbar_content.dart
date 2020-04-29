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
    nameOfCourse: "SAFe For Teams",
    city: "Los Angeles",
    dateOfCourse: "March 28th, 2021",
  ),
  CourseItem(
    courseImage:
        "assets/images/trainingpage/course-logos/lean-portfolio-management.png",
    nameOfCourse: "Lean Portfolio Management",
    city: "San Francisco",
    dateOfCourse: "June 24th, 2020",
  ),
  CourseItem(
    courseImage:
        "assets/images/trainingpage/course-logos/prof-scrum-master.png",
    nameOfCourse: "Professional Scrum Master",
    city: "Hamden",
    dateOfCourse: "August 18th, 2020",
  ),
  CourseItem(
    courseImage:
        "assets/images/trainingpage/course-logos/prof-scrum-product-owner.png",
    nameOfCourse: "Professional Scrum Product Owner",
    city: "New York City",
    dateOfCourse: "April 12th, 2020",
  ),
  CourseItem(
    courseImage:
        "assets/images/trainingpage/course-logos/prof-scrum-developer.png",
    nameOfCourse: "Professional Scrum Developer",
    city: "Chicago",
    dateOfCourse: "July 6th, 2020",
  ),
  CourseItem(
    courseImage:
        "assets/images/trainingpage/course-logos/certified-scrum-master.png",
    nameOfCourse: "Certified Scrum Master",
    city: "Compton",
    dateOfCourse: "September 19th, 2020",
  ),
  CourseItem(
    courseImage:
        "assets/images/trainingpage/course-logos/certified-scrum-product-owner.png",
    nameOfCourse: "Certified Scrum Product Owner",
    city: "Palm Dale",
    dateOfCourse: "November 18th, 2020",
  ),
  CourseItem(
    courseImage:
        "assets/images/trainingpage/course-logos/certified-scrum-developer.png",
    nameOfCourse: "Certified Scrum Developer",
    city: "Hollywood",
    dateOfCourse: "October 12th, 2020",
  ),
  CourseItem(
    courseImage:
        "assets/images/trainingpage/course-logos/proj-management-proposal.png",
    nameOfCourse: "Project Management Professional",
    city: "Salt Lake City",
    dateOfCourse: "Decemeber 15th, 2020",
  ),
  CourseItem(
    courseImage: "assets/images/trainingpage/course-logos/pmi-acp.png",
    nameOfCourse: "Agile Certified Practicioner",
    city: "Seattle",
    dateOfCourse: "May 13th, 2020",
  ),
  CourseItem(
    courseImage: "assets/images/trainingpage/course-logos/vse-logo.jpg",
    nameOfCourse: "Value Stream Workshop",
    city: "Denver",
    dateOfCourse: "May 13th, 2020",
  ),
  CourseItem(
    courseImage: "assets/images/trainingpage/course-logos/spm-logo.jpg",
    nameOfCourse: "SAFe Portfolio Management",
    city: "Los Angeles",
    dateOfCourse: "May 13th, 2020",
  ),
  CourseItem(
    courseImage: "assets/images/trainingpage/course-logos/piw-logo.png",
    nameOfCourse: "Program Increment Workshop",
    city: "Los Angeles",
    dateOfCourse: "May 13th, 2020",
  ),
  CourseItem(
    courseImage: "assets/images/trainingpage/course-logos/i&a-logo.jpg",
    nameOfCourse: "Inspect & Adapt",
    city: "San Diego",
    dateOfCourse: "May 13th, 2020",
  ),
  CourseItem(
    courseImage: "assets/images/trainingpage/course-logos/pmv-logo.jpg",
    nameOfCourse: "Product Management Workshop",
    city: "San Diego",
    dateOfCourse: "May 13th, 2020",
  ),
  CourseItem(
    courseImage: "assets/images/trainingpage/course-logos/team-building.png",
    nameOfCourse: "Team Building",
    city: "San Diego",
    dateOfCourse: "May 13th, 2020",
  ),
  CourseItem(
    courseImage: "assets/images/trainingpage/course-logos/cscw-logojpg.jpg",
    nameOfCourse: "Customized Scrum Kanban Workshop",
    city: "San Diego",
    dateOfCourse: "May 13th, 2020",
  ),
];

List<CourseItem> publicCourses = [
  allCourses[0],
  allCourses[1],
  allCourses[2],
  allCourses[3],
];

List<CourseItem> privateCourses = [
  allCourses[4],
  allCourses[5],
  allCourses[6],
  allCourses[7],
  allCourses[8],
  allCourses[9],
  allCourses[10],
];

List<CourseItem> corporateCourses = [
  allCourses[11],
  allCourses[12],
  allCourses[13],
  allCourses[14],
  allCourses[15],
  allCourses[16],
  allCourses[17],
];

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zengage_learning_platform/models/Course.dart';
import 'package:zengage_learning_platform/models/DropDownValueItems.dart';
import 'package:zengage_learning_platform/widgets/body/ContactUsImageBanner.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/navbar/NavLinkDropDown.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';
import 'package:zengage_learning_platform/widgets/training_page_widgets/training_badge_builder.dart';

class TrainingPage extends StatefulWidget {
  @override
  _TrainingPageState createState() => _TrainingPageState();
}

Future<List<Course>> loadCourses() async {
  List<Course> futureCourses = new List();
  String data = await rootBundle.loadString("assets/content/courses.json");
  final json = jsonDecode(data) as List;
  json.forEach((value) {
    Course course = new Course.fromJson(value);
    futureCourses.add(course);
  });
  return futureCourses;
}

class _TrainingPageState extends State<TrainingPage> {
  @override
  void initState() {
    // load the json into objects before this widget is created
    super.initState();
    /*WidgetsBinding.instance.addPostFrameCallback((_) async {
      setState(() async {
        courses = await loadCourses();
      });
    });*/
  }

  List<Widget> contentViews = [
    TrainingHeaderBanner(
      imagePath: 'assets/images/trainingpage/training-page-banner.jpeg',
    ),
    DropdownContainer(),
    WhyTrainingSection(),
    TrainingBadgeContainer(),
    Footer(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              child: contentViews[index],
            );
          },
          itemCount: contentViews.length,
        ),
      ),
    );
  }
}

class TrainingHeaderBanner extends StatelessWidget {
  final String imagePath;

  TrainingHeaderBanner({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return ContactUsImageBanner(
      imageLink: imagePath,
    );
  }
}

class DropdownContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.width / 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          NavLinkDropDown(
            menuValueItems: courseMenuValue,
            dropDownValue: "Course Type",
          ),
          NavLinkDropDown(
            menuValueItems: certifyingBodyMenuValue,
            dropDownValue: "Certifying Body",
          ),
          NavLinkDropDown(
            menuValueItems: roleMenuValue,
            dropDownValue: "Role",
          ),
        ],
      ),
    );
  }
}

class WhyTrainingSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(50.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          CircleAvatar(
            radius: MediaQuery.of(context).size.width / 20,
            backgroundColor: Colors.white,
            backgroundImage:
                AssetImage("assets/images/homepage/hp-training.png"),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: Text(
                      "Why Training",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text("\n"),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Text(
                      "Getting the most out of the Agile process requires new skills and techniques. "
                      "Our trainers will give you the training you need, "
                      "keeping you engeged and energized as you progress toward your Agile certification!",
                      style: TextStyle(fontSize: 20.0, color: Colors.black),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TrainingBadgeContainer extends StatefulWidget {
  @override
  _TrainingBadgeContainerState createState() => _TrainingBadgeContainerState();
}

class _TrainingBadgeContainerState extends State<TrainingBadgeContainer> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: loadCourses(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {
          return Container(
            height: MediaQuery.of(context).size.height / 1,
            width: MediaQuery.of(context).size.width / 1,
            child: ListView(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          "Leadership",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        TrainingBadgeItem(
                          badgeTile: "Certified Agile Leadership",
                          imagePath:
                              "assets/images/trainingpage/course-logos/sai-cert-logo.png",
                          course: snapshot.data[19],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          "Scaled Agile 5.0",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            TrainingBadgeItem(
                              badgeTile: "Leading SAFe",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/leading-safe.png",
                              course: snapshot.data[10],
                            ),
                            TrainingBadgeItem(
                                badgeTile: "SAFe For Teams",
                                imagePath:
                                    "assets/images/trainingpage/course-logos/safe-for-teams.png",
                                course: snapshot.data[14]),
                            TrainingBadgeItem(
                              badgeTile: "Lean Portfolio Management",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/lean-portfolio-management.png",
                              course: snapshot.data[17],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          "SCRUM.ORG",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            TrainingBadgeItem(
                              badgeTile: "Profession Scrum Master",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/prof-scrum-master.png",
                              course: snapshot.data[3],
                            ),
                            TrainingBadgeItem(
                              badgeTile: "Professional Scrum Product Owner",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/prof-scrum-product-owner.png",
                              course: snapshot.data[4],
                            ),
                            TrainingBadgeItem(
                              badgeTile: "Professional Scrum Developer",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/prof-scrum-developer.png",
                              course: snapshot.data[5],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          "SCRUM ALLIANCE",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            TrainingBadgeItem(
                              badgeTile: "Certified Scrum Master",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/certified-scrum-master.png",
                              course: snapshot.data[0],
                            ),
                            TrainingBadgeItem(
                              badgeTile: "Certified Scrum Product Owner",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/certified-scrum-product-owner.png",
                              course: snapshot.data[1],
                            ),
                            TrainingBadgeItem(
                              badgeTile: "Certified Scrum Developer",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/certified-scrum-developer.png",
                              course: snapshot.data[2],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          "PMI",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            TrainingBadgeItem(
                              badgeTile: "Project Management Professional",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/proj-management-proposal.png",
                              course: snapshot.data[20],
                            ),
                            TrainingBadgeItem(
                              badgeTile: "Agile Certified Practicioner",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/pmi-acp.png",
                              course: snapshot.data[21],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Text(
                          "CORPORATE TRAINING",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            TrainingBadgeItem(
                              badgeTile: "Value Stream Workshop",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/vse-logo.jpg",
                              course: snapshot.data[22],
                            ),
                            TrainingBadgeItem(
                              badgeTile: "SAFe Portfolio Management",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/spm-logo.jpg",
                              course: snapshot.data[23],
                            ),
                            TrainingBadgeItem(
                              badgeTile: "Program Increment Workshop",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/piw-logo.png",
                              course: snapshot.data[24],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            TrainingBadgeItem(
                              badgeTile: "Inspect & Adapt",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/i&a-logo.jpg",
                              course: snapshot.data[25],
                            ),
                            TrainingBadgeItem(
                              badgeTile: "Product Management Workshop",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/pmv-logo.jpg",
                              course: snapshot.data[26],
                            ),
                            TrainingBadgeItem(
                              badgeTile: "Team Building",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/team-building.png",
                              course: snapshot.data[27],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            TrainingBadgeItem(
                              badgeTile: "Customized Kanban Workshop",
                              imagePath:
                                  "assets/images/trainingpage/course-logos/cscw-logojpg.jpg",
                              course: snapshot.data[28],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
        } else {
          return CircularProgressIndicator();
        }
      },
    );
  }
}

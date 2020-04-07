import 'package:flutter/material.dart';
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

class _TrainingPageState extends State<TrainingPage> {
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

class TrainingBadgeContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                      "Leader Ship",
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
                        ),
                        TrainingBadgeItem(
                          badgeTile: "SAFe For Teams",
                          imagePath:
                              "assets/images/trainingpage/course-logos/safe-for-teams.png",
                        ),
                        TrainingBadgeItem(
                          badgeTile: "Lean Portfolio Management",
                          imagePath:
                              "assets/images/trainingpage/course-logos/lean-portfolio-management.png",
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
                        ),
                        TrainingBadgeItem(
                          badgeTile: "Professional Scrum Product Owner",
                          imagePath:
                              "assets/images/trainingpage/course-logos/prof-scrum-product-owner.png",
                        ),
                        TrainingBadgeItem(
                          badgeTile: "Professional Scrum Developer",
                          imagePath:
                              "assets/images/trainingpage/course-logos/prof-scrum-developer.png",
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
                        ),
                        TrainingBadgeItem(
                          badgeTile: "Certified Scrum Product Owner",
                          imagePath:
                              "assets/images/trainingpage/course-logos/certified-scrum-product-owner.png",
                        ),
                        TrainingBadgeItem(
                          badgeTile: "Certified Scrum Developer",
                          imagePath:
                              "assets/images/trainingpage/course-logos/certified-scrum-developer.png",
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
                        ),
                        TrainingBadgeItem(
                          badgeTile: "Agile Certified Practicioner",
                          imagePath:
                              "assets/images/trainingpage/course-logos/pmi-acp.png",
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
                        ),
                        TrainingBadgeItem(
                          badgeTile: "SAFe Portfolio Management",
                          imagePath:
                              "assets/images/trainingpage/course-logos/spm-logo.jpg",
                        ),
                        TrainingBadgeItem(
                          badgeTile: "Program Increment Workshop",
                          imagePath:
                              "assets/images/trainingpage/course-logos/certified-scrum-developer.png",
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
                        ),
                        TrainingBadgeItem(
                          badgeTile: "Product Management Workshop",
                          imagePath:
                              "assets/images/trainingpage/course-logos/pmv-logo.jpg",
                        ),
                        TrainingBadgeItem(
                          badgeTile: "Team Building",
                          imagePath:
                              "assets/images/trainingpage/course-logos/certified-scrum-developer.png",
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
                          badgeTile: "Customized Scrum | Kanban Workshop",
                          imagePath:
                              "assets/images/trainingpage/course-logos/cscw-logojpg.jpg",
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        ));
  }
}

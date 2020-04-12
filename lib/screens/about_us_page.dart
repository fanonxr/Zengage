import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/screens/assessment/assessment_page.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/landing_banner/HeaderBanner.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

class AboutUsPage extends StatelessWidget {
  final List<Widget> aboutUsWidgets = [
    HeaderBanner(
      imagePath: "assets/images/homepage/hp-banner-2.jpg",
      imageCoverText: "",
    ),
    MissionDetail(),
    WhatWeDoDetail(),
    MeetTheTeamDetail(),
    Footer(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Container(
                child: aboutUsWidgets[index],
              );
            },
            itemCount: aboutUsWidgets.length,
          ),
        ),
      ),
    );
  }
}

class MissionDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 40.0, top: 15.0),
            alignment: Alignment.topLeft,
            color: Colors.blue,
            height: MediaQuery.of(context).size.height / 25,
            width: MediaQuery.of(context).size.width / 1,
            child: Container(
              child: Text(
                "Our Mission",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.white70,
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 1.8,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Our group has been providing Agile training and coaching to leading organzations for many years."
                    "We are certified trainers for the leading agile frameworks, allowing us to provide the most appropriate training for any situation."
                    "Training courses are held at central locations or can be taught on-site if a client wishes to bring a class in house for a larger audience."
                    "We have helped software development organizations build Agile teams and realize their potential. Allow us to work with you to improve your enterprise's"
                    "ability to step up to the challenege that you face and bring a strategic outlook to your development transformation.",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Container(
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 10,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      AssetImage("assets/images/aboutpage/mission.jpg"),
                  // child: Image.asset(imagePath),
                ),
              )
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}

class WhatWeDoDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 40.0, top: 15.0),
            alignment: Alignment.topLeft,
            color: Colors.blue,
            height: MediaQuery.of(context).size.height / 25,
            width: MediaQuery.of(context).size.width / 1,
            child: Container(
              child: Text(
                "What We Do",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 10,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      AssetImage("assets/images/aboutpage/what-we-do.jpg"),
                  // child: Image.asset(imagePath),
                ),
              ),
              Container(
                color: Colors.white70,
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  width: MediaQuery.of(context).size.width / 1.8,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Our group has been providing Agile training and coaching to leading organzations for many years."
                    "We are certified trainers for the leading agile frameworks, allowing us to provide the most appropriate training for any situation."
                    "Training courses are held at central locations or can be taught on-site if a client wishes to bring a class in house for a larger audience."
                    "We have helped software development organizations build Agile teams and realize their potential. Allow us to work with you to improve your enterprise's"
                    "ability to step up to the challenege that you face and bring a strategic outlook to your development transformation.",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
        ],
      ),
    );
  }
}

class MeetTheTeamDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 40.0, top: 15.0),
            alignment: Alignment.topLeft,
            color: Colors.blue,
            height: MediaQuery.of(context).size.height / 25,
            width: MediaQuery.of(context).size.width / 1,
            child: Container(
              child: Text(
                "Meet The Team",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22.0,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                color: Colors.white70,
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width / 1.8,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    """Rej Heda is an energtic, accomplished and seasoned technology consultant with core compentency in scaling software agility at
                    large enterprises using SAFe/LeSS/SOS framework. With over 22 years of proven experience in Fortune 500 companies across
                    various industries (Eductaion, Finance, Insurance, healthcare, Energy, Retail and Manufracturing), Raj has demonstrated his ability to lead, motivate
                    and mentor multi-functional and global teams. His strong communication and faciltation skills have helped clients succeed across all levels of their organziation
                    He's an Enterprise Agile transofrmation coach, a DevOps coach, a Delivery lead and Trainer.
                    Raj's expertise includes:
                    * Scaled Agile Framework implementation -SAFe, Less, SOSO
                    * Enterprise Agile Transformation - Scrum, Kanban
                    * Enteprise Agile/DevOps Coach and Trainer
                    * Lead Agile Management Office and Project Management Office
                    * Agile Program/Project Management
                    * Change Management
                    * Client Relationships
                    * Resource Management
                    * Release Management
                    * Software Development""",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              Container(
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width / 10,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      AssetImage("assets/images/aboutpage/meet-the-team.jpg"),
                  // child: Image.asset(imagePath),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          ContactUsButton(),
        ],
      ),
    );
  }
}

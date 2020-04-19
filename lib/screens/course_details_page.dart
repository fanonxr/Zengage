import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/models/Course.dart';
import 'package:zengage_learning_platform/screens/register_page.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/header/custom_clipper.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

import 'home/contact_us_page.dart';

class CourseDetailsPage extends StatefulWidget {
//  final int courseIndex;
  final Course course;

  CourseDetailsPage({/*@required*/ this.course});

  @override
  _CourseDetailsPageState createState() => _CourseDetailsPageState();
}

Future<String> readFileContents(String filePath) async {
  return rootBundle.loadString(filePath);
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  Course course = Course();

  @override
  void initState() {
    super.initState();
    readFileContents("assets/content/courses.json").then((value) {
      print("Data read from the file is:");
      final decoded = jsonDecode(value) as List;
      setState(() {
        course = new Course.fromJson(decoded[10]);
        print(course.toString());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: ListView(
            children: <Widget>[
              Transform.translate(
                offset: Offset(48.0, 64.0),
                child: GreyBoldText(
                  text: course.partner.toUpperCase(),
                ),
              ),
              getCourseDetailHeader(),
              IntrinsicHeight(
//                Occupies the space required by the child widget
                child: Row(
                  children: <Widget>[
                    _getCourseDetailLeftColumn(),
                    ClipPath(
                      clipper: CustomTopBottomRightTriangleClipper(),
                      child: VerticalDivider(
                        width: 60.0,
                        thickness: 6.0,
                        color: blueThemeColor,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
//                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                _getBoldValueText('Length:',
                                    '${course.details != null ? course.details.length : ""}'),
                                _getBoldValueText('Effort: ',
                                    '${course.details != null ? course.details.effort : ""}'),
                                _getBoldValueText('Price: ',
                                    '\$${course.details != null ? course.details.cost : ""}'),
                              ],
                            ),
                          ),
                          _getReviewSection(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }

  RichText _getBoldValueText(String label, String value) {
    return RichText(
      text: TextSpan(
          style: new TextStyle(
            fontSize: 14.0,
            color: Colors.black,
          ),
          children: <TextSpan>[
            TextSpan(text: label, style: TextStyle(color: textGreyColor)),
            TextSpan(
                text: value, style: TextStyle(fontWeight: FontWeight.bold)),
          ]),
    );
  }

  Widget getCourseDetailHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 190.0,
          height: 190.0,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.contain,
                  image: new NetworkImage(course.iconFile))),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16.0),
            height: 80.0,
            color: bgGreyColor,
            child: GreyBoldText(
              text: course.courseTitle.toUpperCase(),
            ),
          ),
        ),
        Container(
          height: 350.0,
          width: 450.0,
          alignment: Alignment.topCenter,
          padding: EdgeInsets.only(top: 100.0),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      'https://firebasestorage.googleapis.com/v0/b/zengage-learning.appspot.com/o/trainingpage%2Ftraining-page-banner.jpeg?alt=media&token=391d1137-4bfb-4955-86a2-6d89fdab16a5'),
                  fit: BoxFit.cover)),
        )
      ],
    );
  }

  Widget _getCourseDetailLeftColumn() {
    return Expanded(
      flex: 1,
      child: Column(
//        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          TextSection(
              sectionName: 'About This Course',
              sectionText: course.details != null
                  ? course.details.aboutThisCourse
                  : "Coming soon"),
          SizedBox(
            height: 64.0,
          ),
          TextSection(
              sectionName: 'What You Will Learn',
              sectionText: course.details != null
                  ? course.details.whatYoullLearn
                  : "Coming soon"),
          _getInstructorsSection(),
          Expanded(
            child: Container(),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: GreyButton(
              text: "REGISTER",
//            TODO: On Pressed
            ),
          )
        ],
      ),
    );
  }

  Widget _getReviewSection() {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SectionName('Reviews'),
          if (course.details != null)
            for (String reviewText in course.details.reviews)
              ReviewAndInstructor(text: reviewText)
        ],
      ),
    );
  }

  Widget _getInstructorsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionName("Meet the Instructors"),
        ReviewAndInstructor(
          text: course.classes != null ? course.classes[0].instructor : "",
        )
      ],
    );
  }
}

class ReviewAndInstructor extends StatelessWidget {
  final String text;
  final String imageUrl;

  const ReviewAndInstructor({Key key, @required this.text, this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 80.0,
          backgroundColor: Colors.transparent,
          child: FlutterLogo(
            size: 80.0,
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.only(top: 32.0, right: 64.0),
//                  height: 160.0,
            decoration: BoxDecoration(
              border: Border.all(color: bgGreyColor, width: 2.0),
            ),
            child: Text(text),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  final String sectionName;
  final String sectionText;

  const TextSection({Key key, this.sectionName, this.sectionText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SectionName(sectionName),
          Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 8.0, right: 32.0),
            child: Text(sectionText),
          ),
        ],
      ),
    );
  }
}

class SectionName extends StatelessWidget {
  final String sectionName;

  SectionName(this.sectionName);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: darkGreyColor,
      padding: EdgeInsets.only(left: 32.0, top: 12.0, bottom: 12.0),
      child: Text(
        sectionName,
        style: TextStyle(color: Colors.white, fontSize: 22.0),
      ),
    );
  }
}

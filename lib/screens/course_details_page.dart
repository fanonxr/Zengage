import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/models/Course.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';
import 'package:zengage_learning_platform/screens/register_page.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/header/custom_clipper.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

import 'home/contact_us_page.dart';

class CourseDetailsPage extends StatefulWidget {
  final Course course;

  CourseDetailsPage({@required this.course});

  @override
  _CourseDetailsPageState createState() => _CourseDetailsPageState();
}

class _CourseDetailsPageState extends State<CourseDetailsPage> {
  @override
  Widget build(BuildContext context) {
    if (widget.course != null) {
      print("Course is not null ${widget.course.toString()}");
    } else {
      print("Course is null");
    }
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: ListView(
            children: <Widget>[
              Transform.translate(
                offset: Offset(48.0, 64.0),
                child: GreyBoldText(
                  text: widget.course != null
                      ? widget.course.partner.toUpperCase()
                      : "Coming Soon",
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
                                    '${widget.course != null && widget.course.details != null ? widget.course.details.length : ""}'),
                                _getBoldValueText('Effort: ',
                                    '${widget.course != null && widget.course.details != null ? widget.course.details.effort : ""}'),
                                _getBoldValueText('Price: ',
                                    '\$${widget.course != null && widget.course.details != null ? widget.course.details.cost : ""}'),
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
          margin: EdgeInsets.only(left: 16.0),
          width: 190.0,
          height: 190.0,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      widget.course != null ? widget.course.iconFile : ""))),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 16.0),
            height: 80.0,
            color: bgGreyColor,
            child: GreyBoldText(
              text: widget.course != null
                  ? widget.course.courseTitle.toUpperCase()
                  : "Coming soon",
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
                      widget.course != null && widget.course.headerImage != null
                          ? widget.course.headerImage
                          : ""),
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
              sectionText:
                  widget.course != null && widget.course.details != null
                      ? widget.course.details.aboutThisCourse
                      : "Coming soon"),
          SizedBox(
            height: 64.0,
          ),
          TextSection(
              sectionName: 'What You Will Learn',
              sectionText:
                  widget.course != null && widget.course.details != null
                      ? widget.course.details.whatYoullLearn
                      : "Coming soon"),
          SizedBox(
            height: 64.0,
          ),
          _getInstructorsSection(),
          Expanded(
            child: Container(),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16.0),
            child: GreyButton(
              text: "REGISTER",
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(RouteGenerator.REGISTRATION_ROUTE);
              },
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
          if (widget.course != null && widget.course.details != null)
            for (Reviews review in widget.course.details.reviews)
              ReviewAndInstructor(
                  imageUrl: review.reviewImage, text: review.reviewText)
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
          imageUrl:
              "https://firebasestorage.googleapis.com/v0/b/zengage-learning.appspot.com/o/trainingpage%2FCommon%20Assets%2FInstructor.png?alt=media&token=5de2a54c-c15f-4f9f-b297-e4b03d895848",
          text: widget.course != null && widget.course.classes != null
              ? /*widget.course.classes[0].instructor*/ "Raj Heda ia an energetic, accomplished and seasoned technology consultant with core competency in scaling software agility at large enterprises using SAFe/LeSS/SOS framework.  With over 22 years of proven experience in Fortune 500 companies across various industries (Education, Finance, Insurance, Healthcare, Energy, Retail and Manufacturing), Raj has demonstrated his ability to lead, motivate and mentor multi-functional and global teams.  His strong communication and facilitation skills have helped clients succeed across all levels of their organization.  He's an Enterprise Agile transformation coach, a DevOps coach, a Delivery lead and Trainer."
              : "Raj Heda ia an energetic, accomplished and seasoned technology consultant with core competency in scaling software agility at large enterprises using SAFe/LeSS/SOS framework.  With over 22 years of proven experience in Fortune 500 companies across various industries (Education, Finance, Insurance, Healthcare, Energy, Retail and Manufacturing), Raj has demonstrated his ability to lead, motivate and mentor multi-functional and global teams.  His strong communication and facilitation skills have helped clients succeed across all levels of their organization.  He's an Enterprise Agile transformation coach, a DevOps coach, a Delivery lead and Trainer.",
        )
      ],
    );
  }
}

class ReviewAndInstructor extends StatelessWidget {
  final String text;
  final String imageUrl;

  const ReviewAndInstructor(
      {Key key, @required this.text, @required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          ClipOval(
            child: Image(
              height: 120.0,
              width: 120.0,
              fit: BoxFit.fitWidth,
              image: NetworkImage(imageUrl),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(32.0),
              margin: EdgeInsets.only(top: 16.0, right: 64.0),
//                  height: 160.0,
              decoration: BoxDecoration(
                border: Border.all(color: bgGreyColor, width: 2.0),
              ),
              child: Text(text),
            ),
          ),
        ],
      ),
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
//      height: 300.0,
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

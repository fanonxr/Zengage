import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:zengage_learning_platform/models/Course.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';

class NavLinkDropDown extends StatefulWidget {
  final List<String> menuValueItems;
  String dropDownValue;

  NavLinkDropDown({this.menuValueItems, this.dropDownValue});

  @override
  _NavLinkDropDownState createState() => _NavLinkDropDownState();
}

class _NavLinkDropDownState extends State<NavLinkDropDown> {
  List<Course> courseList = [];

  @override
  void initState() {
    super.initState();
    readFileContents("assets/content/courses.json").then((value) {
      print("Data is read from courses.json");
      final decoded = jsonDecode(value) as List;
      decoded.forEach((element) {
        Course course = new Course.fromJson(element);
        courseList.add(course);
      });
    });
  }

  Future<String> readFileContents(String filePath) async {
    return rootBundle.loadString(filePath);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton(
        underline: SizedBox(),
        hint: widget.dropDownValue == null
            ? Text("Dropdown")
            : Text(
                widget.dropDownValue,
                style: TextStyle(color: Colors.black),
              ),
        isExpanded: false,
        style: TextStyle(color: Colors.black),
        items: widget.menuValueItems.map((value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          );
        }).toList(),
        onChanged: (value) {
          // TODO: Navigate to the next page
          value = value.toString().toLowerCase();
          if (value == 'public') {
            // navigate to the training page
            Navigator.pushNamed(context, RouteGenerator.TRAINING_ROUTE);
          } else if (value == 'training') {
//            TODO: Temporary
            Navigator.pushNamed(context, RouteGenerator.COURSE_DETAILS_ROUTE,
                arguments: courseList[5]);
          } else if (value == 'upcoming courses') {
            // navigate to the upcoming courses page
            Navigator.pushNamed(context, RouteGenerator.UPCOMING_COURSE_ROUTE);
          }

          setState(() {
            // widget.dropDownValue = value;
          });
        },
      ),
    );
  }
}

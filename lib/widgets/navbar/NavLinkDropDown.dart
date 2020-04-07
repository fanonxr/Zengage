import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';

class NavLinkDropDown extends StatefulWidget {
  final List<String> menuValueItems;
  String dropDownValue;

  NavLinkDropDown({this.menuValueItems, this.dropDownValue});

  @override
  _NavLinkDropDownState createState() => _NavLinkDropDownState();
}

class _NavLinkDropDownState extends State<NavLinkDropDown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      child: DropdownButton(
        underline: SizedBox(),
        hint: widget.dropDownValue == null
            ? Text("Dropdown")
            : Text(
                widget.dropDownValue,
                style: TextStyle(
                    fontSize: 18.0,
                    color: textGreyColor,
                    fontWeight: FontWeight.bold),
              ),
        isExpanded: true,
        style: TextStyle(color: textGreyColor, fontWeight: FontWeight.bold),
        items: widget.menuValueItems.map((value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(
                  color: textGreyColor,
                  fontSize: 16.0,
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
            Navigator.pushNamed(context, RouteGenerator.TRAINING_ROUTE);
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

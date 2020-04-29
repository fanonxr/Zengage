import 'package:flutter/material.dart';
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
          if (value == 'public' ||
              value == 'training' ||
              value == 'upcoming courses') {
            // navigate to the training page
            Navigator.pushNamed(context, RouteGenerator.TRAINING_ROUTE);
          }
          setState(() {
            // widget.dropDownValue = value;
          });
        },
      ),
    );
  }
}

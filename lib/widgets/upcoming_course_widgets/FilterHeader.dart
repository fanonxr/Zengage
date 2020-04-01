import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterHeader extends StatefulWidget {
  @override
  _FilterHeaderState createState() => _FilterHeaderState();
}

class _FilterHeaderState extends State<FilterHeader> {
  DateTime _dateTime;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 1,
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Padding(
                padding: EdgeInsets.all(75.0),
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(25.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(Icons.clear_all),
                        Text("Filter"),
                        SizedBox(
                          width: 50.0,
                        ),
                        Icon(Icons.search),
                        SizedBox(
                          width: 10.0,
                        ),
                        buildInputField(context, "Search for a course..."),
                        SizedBox(
                          width: 50.0,
                        ),
                        Icon(Icons.calendar_today),
                        SizedBox(
                          width: 10.0,
                        ),
                        RaisedButton(
                          color: Colors.white,
                          hoverColor: Colors.grey,
                          child: Text(
                            _dateTime == null
                                ? 'Select a Date'
                                : _dateTime.toString().substring(0, 10),
                          ),
                          textColor: Colors.blue,
                          padding: EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
                          splashColor: Colors.white,
                          onPressed: () {
                            showDatePicker(
                              context: context,
                              initialDate: _dateTime == null
                                  ? DateTime.now()
                                  : _dateTime,
                              firstDate: DateTime(2001),
                              lastDate: DateTime(2222),
                            ).then((value) {
                              setState(() {
                                _dateTime = value;
                              });
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[],
            ),
          )
        ],
      ),
    );
  }
}

buildInputField(context, String displayText) {
  TextEditingController inputController = TextEditingController();
  return Container(
    width: MediaQuery.of(context).size.width / 2,
    child: TextFormField(
      controller: inputController,
      decoration: InputDecoration(
          hintText: displayText,
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: Colors.blue),
          )),
      onFieldSubmitted: (value) {},
    ),
  );
}

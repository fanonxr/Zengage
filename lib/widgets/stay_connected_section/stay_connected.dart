import 'package:flutter/material.dart';

class StayConnected extends StatefulWidget {
  final String backgroundImagePath;
  final String avatarImagePath;

  StayConnected({this.backgroundImagePath, this.avatarImagePath});

  @override
  _StayConnectedState createState() => _StayConnectedState();
}

class _StayConnectedState extends State<StayConnected> {
  bool checkValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1,
      height: MediaQuery.of(context).size.height / 2.5,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(widget.backgroundImagePath), fit: BoxFit.cover),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 4.5,
        height: MediaQuery.of(context).size.height / 4.5,
        margin: EdgeInsets.all(75.0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              radius: MediaQuery.of(context).size.width / 16,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(widget.avatarImagePath),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text("STAY CONNECTED WITH US"),
                Text("Recieve information on upcoming workshops and classes"),
                Row(
                  children: <Widget>[
                    buildInputField(context, "Name"),
                    SizedBox(
                      width: 40.0,
                    ),
                    buildInputField(context, "Email")
                  ],
                ),
                Row(
                  children: <Widget>[
                    Checkbox(
                        value: checkValue,
                        onChanged: (value) {
                          setState(() {
                            checkValue = value;
                          });
                        }),
                    Text("I permit you to email me")
                  ],
                ),
                ButtonWithOutline(
                  buttonText: "Sign Up",
                  buttonBackgroundColor: Colors.grey,
                  buttonBorderColor: Colors.blue,
                  buttonHeight: MediaQuery.of(context).size.height / 20,
                  buttonWidth: MediaQuery.of(context).size.width / 3.5,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonWithOutline extends StatelessWidget {
  final String buttonText;
  final Color buttonBorderColor;
  final Color buttonBackgroundColor;
  final double buttonWidth;
  final double buttonHeight;

  ButtonWithOutline(
      {this.buttonText,
      this.buttonBorderColor,
      this.buttonBackgroundColor,
      this.buttonWidth,
      this.buttonHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      child: OutlineButton(
        borderSide: BorderSide(
            color: buttonBorderColor, style: BorderStyle.solid, width: 3.0),
        child: Text(buttonText),
        color: buttonBackgroundColor,
        onPressed: () => print("button pressed"),
      ),
    );
  }
}

buildInputField(context, String displayText) {
  TextEditingController inputController = TextEditingController();
  return Container(
    width: MediaQuery.of(context).size.width / 10,
    child: TextFormField(
      controller: inputController,
      decoration: InputDecoration(
        hintText: displayText,
        filled: true,
      ),
      onFieldSubmitted: (value) {},
    ),
  );
}

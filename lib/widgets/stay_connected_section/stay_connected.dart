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
  TextEditingController inputController = TextEditingController();
  TextEditingController inputController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(widget.backgroundImagePath), fit: BoxFit.cover),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width / 4.2,
        height: MediaQuery.of(context).size.height / 4.2,
        margin: EdgeInsets.all(75.0),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              radius: MediaQuery.of(context).size.width / 13,
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
                    Container(
                      width: MediaQuery.of(context).size.width / 10,
                      child: TextFormField(
                        controller: inputController,
                        decoration: InputDecoration(
                          hintText: 'Full Name',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Colors.grey[200],
                          filled: true,
                          prefixIcon: Icon(
                            Icons.contact_mail,
                            color: Colors.black,
                          ),
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 10,
                      child: TextFormField(
                        controller: inputController2,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          fillColor: Colors.grey[200],
                          filled: true,
                          prefixIcon: Icon(
                            Icons.mail,
                            color: Colors.black,
                          ),
                        ),
                        onFieldSubmitted: (value) {},
                      ),
                    )
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
                Container(
                  width: MediaQuery.of(context).size.width / 3.5,
                  height: MediaQuery.of(context).size.height / 20,
                  child: OutlineButton(
                      borderSide: BorderSide(
                          color: Colors.blue,
                          style: BorderStyle.solid,
                          width: 3.0),
                      child: Text("Sign Up"),
                      color: Colors.grey,
                      onPressed: () {
                        setState(() {
                          inputController.clear();
                          inputController2.clear();
                          checkValue = false;
                        });
                      }),
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

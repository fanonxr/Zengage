import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/constants/app_colors.dart';
import 'package:zengage_learning_platform/screens/home/contact_us_page.dart';
import 'package:zengage_learning_platform/widgets/footer/footer.dart';
import 'package:zengage_learning_platform/widgets/navbar/navbar.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: NavBar(),
        body: Container(
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[
                  WelcomeBanner(
                      imageLink:
                          'assets/images/register/register-page-image.jpg'),
                  RegistrationForm(),
                ],
              ),
              Footer()
            ],
          ),
        ),
      ),
    );
  }
}

class WelcomeBanner extends StatelessWidget {
  final String imageLink;

  const WelcomeBanner({Key key, this.imageLink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
//    double imageHeight = MediaQuery.of(context).size.height / 1.3;
//    double imageWidth = MediaQuery.of(context).size.width;
    double imageHeight = 250.0;
    double imageWidth = 450.0;
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: imageHeight,
            width: imageWidth,
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 100.0),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(imageLink), fit: BoxFit.cover)),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 160.0),
              padding: EdgeInsets.only(left: 32.0),
              color: bgGreyColor,
              height: imageHeight - 50.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GreyBoldText(text: 'Welcome!'),
                  GreyBoldText(text: 'Register below to create your account.')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class GreyBoldText extends StatelessWidget {
  final String text;

  const GreyBoldText({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Text(
        text,
        style: TextStyle(
            color: textGreyColor, fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    );
  }
}

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  List<FormItem> registrationFormItems;

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    registrationFormItems = [
      FormItem(labelText: "Full name"),
      FormItem(labelText: "Email", textType: TextInputType.emailAddress),
      FormItem(labelText: "Password", obscureText: true),
      FormItem(labelText: "Country"),
      FormItem(labelText: "Mailing Address", isOptional: true),
      FormItem(
          labelText: "Contact Number",
          textType: TextInputType.number,
          isOptional: true),
      FormItem(labelText: "Courses", isOptional: true),
      FormItem(
          labelText: "Payment info",
          textType: TextInputType.number,
          hintText: "Card Number",
          isOptional: true)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
                top: 32.0,
                bottom: 32.0,
                left: MediaQuery.of(context).size.width * 0.05),
            width: MediaQuery.of(context).size.width * 0.65,
            child: ListView.builder(
                itemCount: registrationFormItems.length,
                shrinkWrap: true,
                itemBuilder: (context, position) {
                  return FormItemField(
                      registrationFormItem: registrationFormItems[position]);
                }),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: bgGreyColor,
                  width: MediaQuery.of(context).size.width * 0.55 / 4,
                  child: TextField(
                    decoration:
                        InputDecoration.collapsed(hintText: "Month | Day"),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  width: 48.0,
                ),
                Container(
                  color: bgGreyColor,
                  width: MediaQuery.of(context).size.width * 0.55 / 4,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration.collapsed(
                      hintText: 'CVV',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 32.0, bottom: 64.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GreyButton(
                  text: 'Reset',
                  onPressed: () {
                    _formKey.currentState.reset();
                  },
                ),
                Container(
                  width: 48.0,
                ),
                GreyButton(
                  text: 'Register',
                  onPressed: () {
                    // Validate returns true if the form is valid, otherwise false.
                    if (_formKey.currentState.validate()) {
                      Scaffold.of(context).showSnackBar(
                          SnackBar(content: Text('Registering User')));
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FormItemField extends StatelessWidget {
  const FormItemField({@required this.registrationFormItem});

  final FormItem registrationFormItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Row(
        children: <Widget>[
          Container(
              width: MediaQuery.of(context).size.width * 0.10,
              child: GreyBoldText(text: registrationFormItem.getLabelText)),
          Container(
            width: MediaQuery.of(context).size.width * 0.55,
            padding: EdgeInsets.all(4.0),
            color: bgGreyColor,
            child: TextFormField(
              decoration: InputDecoration.collapsed(
                  hintText: registrationFormItem.hintText),
              obscureText: registrationFormItem.obscureText,
              keyboardType: registrationFormItem.textType,
              minLines: registrationFormItem.isMessage ? 9 : 1,
              maxLines: registrationFormItem.isMessage ? 12 : 1,
            ),
          )
        ],
      ),
    );
  }
}

class FormItem {
  String labelText;
  String hintText;
  TextInputType textType;
  bool isOptional;
  bool obscureText;
  bool isMessage;

  FormItem(
      {@required this.labelText,
      this.hintText = '',
      this.textType = TextInputType.text,
      this.isOptional = false,
      this.obscureText = false,
      this.isMessage = false});

  String get getLabelText => isOptional ? '$labelText:' : "*$labelText:";
}

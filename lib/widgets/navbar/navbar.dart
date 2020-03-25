import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:zengage_learning_platform/models/DropDownValueItems.dart';
import 'package:zengage_learning_platform/routes/route_generator.dart';
=======
import 'package:zengage_learning_platform/screens/home/widgets/social_banner.dart';
>>>>>>> 3d5b32d013d3af62fc381ebea1ebf3da15df6309
import 'package:zengage_learning_platform/widgets/header/sign_in_sign_up.dart';
import 'package:zengage_learning_platform/widgets/navbar/NavLink.dart';
import 'package:zengage_learning_platform/widgets/navbar/NavLinkDropDown.dart';
import 'package:zengage_learning_platform/widgets/navbar/SearchNavigation.dart';

<<<<<<< HEAD
class NavBar extends StatefulWidget implements PreferredSizeWidget {
  NavBar({Key key})
      : preferredSize = Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  String pageText;

  _NavBarState({this.pageText});

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: Container(
          child: Image.asset("assets/images/logos/logo-1.png"),
        ),
        actions: <Widget>[
          SearchBarNavigation(),
          NavLink(
            navText: "Assessments",
            navigateToPage: RouteGenerator.TRAINING_ROUTE,
            textColor: Colors.black,
          ),
          NavLinkDropDown(
            dropDownValue: "Training",
            menuValueItems: trainingMenuValue,
          ),
          NavLink(
            navText: "Coaching",
            navigateToPage: RouteGenerator.TRAINING_ROUTE,
            textColor: Colors.black,
          ),
          NavLink(
            navText: "Resources",
            navigateToPage: RouteGenerator.TRAINING_ROUTE,
            textColor: Colors.black,
          ),
          SignInSignUp(),
        ],
        title: NavLink(
          navText: "Agile TechPrime",
          navigateToPage: RouteGenerator.HOME_ROUTE,
        ));
  }
=======
// method to build the navbar on each page, each page
Widget buildNavBar(BuildContext context, String pageText) {
  return AppBar(
    leading: Icon(Icons.accessibility_new),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(48.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SocialBanner(),
        ],
      ),
    ),
    actions: <Widget>[
      NavLink(
        navText: "Home",
        navigateToPage: () {},
        textColor: Colors.black,
      ),
      NavLink(
        navText: "About",
        navigateToPage: () {},
        textColor: Colors.black,
      ),
      NavLink(
        navText: "Contact Us",
        navigateToPage: () {},
        textColor: Colors.black,
      ),
      SignInSignUp()
    ],
    title: Text(
      pageText,
      style: Theme.of(context).appBarTheme.textTheme.title,
    ),
  );
>>>>>>> 3d5b32d013d3af62fc381ebea1ebf3da15df6309
}

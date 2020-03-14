import 'package:flutter/material.dart';
import 'package:zengage_learning_platform/widgets/header/sign_in_sign_up.dart';
import 'package:zengage_learning_platform/widgets/navbar/NavLink.dart';

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

  // method to handle searching for courses
  handleSearch(String query) {}

  // method to clear the search text
  clearSearch() {}

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.accessibility_new),
      actions: <Widget>[
        Container(
          width: 800.0,
          child: TextFormField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: "Search for a course...",
              filled: true,
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.clear,
                  color: Colors.black,
                ),
                onPressed: clearSearch,
              ),
            ),
            onFieldSubmitted: handleSearch,
          ),
        ),
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
        "Zengage",
        style: Theme.of(context).appBarTheme.textTheme.title,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SearchBarNavigation extends StatefulWidget {
  @override
  _SearchBarNavigationState createState() => _SearchBarNavigationState();
}

class _SearchBarNavigationState extends State<SearchBarNavigation> {
  TextEditingController searchController = TextEditingController();

  // method to handle searching for courses
  handleSearch(String query) {}

  // method to clear the search text
  clearSearch() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 6,
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
    );
  }
}

import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SearchBar(
      backgroundColor:
          MaterialStatePropertyAll(Color.fromARGB(255, 253, 252, 252)),
      elevation: MaterialStatePropertyAll(0),
      hintText: 'Search Location',
      hintStyle: MaterialStatePropertyAll(
        TextStyle(
          color: Color.fromARGB(255, 218, 218, 218),
          fontSize: 15
        ),
      ),
      leading: Icon(Icons.search, color: Color.fromARGB(255, 218, 218, 218),),
    );
  }
}
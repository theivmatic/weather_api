import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      backgroundColor:
          const MaterialStatePropertyAll(Color.fromARGB(255, 253, 252, 252)),
      elevation: const MaterialStatePropertyAll(0),
      hintText: 'Search Location',
      hintStyle: MaterialStatePropertyAll(
        Theme.of(context).textTheme.bodyMedium
      ),
      leading: const ImageIcon(
        AssetImage('assets/images/custom_search_icon.png'),
        size: 17.49,
        color: Color.fromARGB(255, 196, 196, 196),
      ),
    );
  }
}

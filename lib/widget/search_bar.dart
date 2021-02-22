import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key, this.key_search, this.hint_text}) : super(key: key);
  final GlobalKey key_search;
  final String hint_text;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: key_search,
      child: TextField(
        decoration: InputDecoration(
          hintText: hint_text,
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}

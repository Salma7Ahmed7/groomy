import 'package:first_step/constant.dart';
import 'package:first_step/widget/button_label.dart';
import 'package:first_step/widget/search_bar.dart';
import 'package:flutter/material.dart';

class SelectArea extends StatefulWidget {
  @override
  _SelectAreaState createState() => _SelectAreaState();
}

class _SelectAreaState extends State<SelectArea> {
  final _keySearch = GlobalKey<FormState>();
  List list_of_countries = List.generate(30, (i) => "Country $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Select Area",
          style: TextStyle(fontSize: 24.0, color: mPrimaryColor),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: SearchBar(
                key_search: _keySearch,
                hint_text: "Search barbers ...",
              ),
            ),
            Expanded(
              flex: 10,
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                itemCount: list_of_countries.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    title: Text(
                      list_of_countries[i],
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int i) {
                  return Divider();
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: ButtonLabel(
                  text: "Confirm",
                  press: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

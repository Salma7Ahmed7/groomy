import 'package:first_step/screens/home/home_screen.dart';
import 'package:first_step/screens/on_boarding/select_area.dart';
import 'package:flutter/material.dart';

import 'constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groomy',
      debugShowCheckedModeBanner: false,
      home: SelectArea(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new HomeScreen(),
      },
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(color: mPrimaryColor, fontSize: 24.0),
        ),
        inputDecorationTheme: InputDecorationTheme(
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: mPrimaryColor),
            borderRadius: BorderRadius.circular(38.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: mPrimaryColor),
            borderRadius: BorderRadius.circular(38.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: mPrimaryColor),
            borderRadius: BorderRadius.circular(38.0),
          ),
        ),
      ),
    );
  }
}

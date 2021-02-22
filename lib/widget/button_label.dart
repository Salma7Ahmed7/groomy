import 'package:flutter/material.dart';

import '../constant.dart';

class ButtonLabel extends StatelessWidget {
  const ButtonLabel({Key key, this.text, this.press}) : super(key: key);
  final String text;
  final Function press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.1),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.08,
        child: FlatButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          color: mPrimarytextColor,
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 19.0),
          ),
        ),
      ),
    );
  }
}

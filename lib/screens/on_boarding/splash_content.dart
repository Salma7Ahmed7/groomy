import 'package:first_step/constant.dart';
import 'package:flutter/material.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);

  final String text, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //title
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
          child: Text(
            "Groomy",
            style: TextStyle(
                color: mPrimaryColor, fontFamily: 'BebasNeue', fontSize: 45),
          ),
        ),

        //image
        Image.asset(
          image,
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.70,
        ),
        Spacer(),

        //body text
        Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: mPrimaryColor, fontSize: 20.0),
        ),
      ],
    );
  }
}

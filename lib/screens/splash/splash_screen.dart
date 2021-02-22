import 'package:first_step/constant.dart';
import 'package:first_step/screens/on_boarding/body_on_boarding.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    var d = Duration(seconds: 3);
    Future.delayed(d, () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
        builder: (context) {
          //to move to next splash screen
          return Body();
        },
      ), (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/splash/splash.png"),
                  fit: BoxFit.fill),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/splash/color.png"),
                  fit: BoxFit.fill),
            ),
          ),
          Center(
            child: Text(
              "GROOMY",
              style: TextStyle(
                color: mPrimarytextColor,
                fontSize: 70.0,
                fontFamily: 'BebasNeue',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

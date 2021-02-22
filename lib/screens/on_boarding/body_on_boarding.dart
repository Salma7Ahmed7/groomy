import 'package:first_step/constant.dart';
import 'package:first_step/screens/on_boarding/splash_content.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int currentPage = 0;

class Body extends StatefulWidget {
  const Body({Key key}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> splash_data = [
    {
      "text": "Choose your favorite barber from\n a list of barbers",
      "image": "assets/splash/undraw_select.png"
    },
    {
      "text": "Book an appointment and choose\n your preferred date",
      "image": "assets/splash/undraw_Booking.png"
    },
    {
      "text":
          "The barber will come to your\n home and you will get your haircut ",
      "image": "assets/splash/undraw_barber.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height * 0.04,
          right: MediaQuery.of(context).size.height * 0.01,
        ),
        child: SizedBox(
          height: 70.0,
          width: 70.0,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: mPrimarytextColor,
            child: Icon(
              Icons.arrow_forward_outlined,
              color: Colors.white,
              size: 30.0,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        currentPage = value;
                      });
                    },
                    itemCount: splash_data.length,
                    itemBuilder: (context, index) => SplashContent(
                      text: splash_data[index]["text"],
                      image: splash_data[index]["image"],
                    ),
                  )),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).size.height * 0.18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splash_data.length,
                      (index) => buildDot(index),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

AnimatedContainer buildDot(int index) {
  return AnimatedContainer(
    duration: mAnimationDuration,
    margin: EdgeInsets.only(right: 5),
    height: 6.0,
    width: currentPage == index ? 20.0 : 6.0,
    decoration: BoxDecoration(
      color: currentPage == index ? mPrimaryColor : Color(0xFFD8D8D8),
      borderRadius: BorderRadius.circular(3),
    ),
  );
}

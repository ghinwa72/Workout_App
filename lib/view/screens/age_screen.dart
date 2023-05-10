import 'package:flutter/material.dart';

import '../components/age_components/gradient_slider.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({Key? key}) : super(key: key);

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  var value = 37;
  int _currentIntValue = 16;
  String one = "assets/images/age1.png";
  String two = "assets/images/age2.png";
  String three = "assets/images/age3.png";
  String four = "assets/images/age4.png";
  String five = "assets/images/age5.png";
  String six = "assets/images/age6.png";
  String seven = "assets/images/age7.png";
  String eight = "assets/images/age8.png";
  String nine = "assets/images/age9.png";
  String ten = "assets/images/age10.png";
  String eleven = "assets/images/age11.png";
  late String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Text(
                "Please select your age",
                style: TextStyle(
                    fontFamily: "Auth",
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Center(
                child: Text(
                  "this will help us make adjustment to your personal plan",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade500),
                ),
              ),
            ),
            Spacer(),
            Center(
              child: Image(
                image: AssetImage(imageGet()),
                width: 300,
                height: 400,
                fit: BoxFit.cover,
              ),),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                children: [
                  Image(
                    image: AssetImage("assets/images/young.png"),
                    height: 50,
                    width: 50,
                  ),
                  SizedBox(
                    height: 30,
                    width: 270,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackShape: GradientSlider(),
                        valueIndicatorColor: Color(0xFF76D3FF),
                        valueIndicatorTextStyle: TextStyle(
                            fontFamily: "Auth",
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                        valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                      ),
                      child: Slider(
                        min: 18,
                        max: 70,
                        value: value.toDouble(),
                        divisions: 52,
                        inactiveColor: Colors.grey,
                        activeColor: Color(0xFFD89FFF),
                        label: "${value.round().toString()} Years",
                        //label: textGet(),
                        onChanged: (val) {
                          setState(() {
                            value = val.toInt();
                          });
                        },
                      ),
                    ),
                  ),
                  Image(
                    image: AssetImage("assets/images/old.png"),
                    height: 70,
                    width: 70,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String imageGet() {
    if (value < 19) {
      image = one;
    } else if (value < 20) {
      image = two;
    } else if (value < 25) {
      image = three;
    } else if (value < 30) {
      image = four;
    } else if (value < 35) {
      image = five;
    } else if (value < 40) {
      image = six;
    } else if (value < 45) {
      image = seven;
    } else if (value < 50) {
      image = eight;
    } else if (value < 55) {
      image = nine;
    } else if (value < 60) {
      image = ten;
    } else {
      image = eleven;
    }
    return image;
  }
}



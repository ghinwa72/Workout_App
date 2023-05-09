import 'package:flutter/material.dart';

import '../components/age_components/slider_theme.dart';

class AgeScreen extends StatefulWidget {
  const AgeScreen({Key? key}) : super(key: key);

  @override
  State<AgeScreen> createState() => _AgeScreenState();
}

class _AgeScreenState extends State<AgeScreen> {
  var value=25;
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
              padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
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
            Padding(
              padding: const EdgeInsets.only(bottom:20),
              child: Row(
                children: [
                  Image(image: AssetImage("assets/images/young.png"),
                    height: 50,width: 50,),
                  SizedBox(
                    height: 30,
                    width: 270,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          trackShape: GradientRectSliderTrackShape(),
                          valueIndicatorColor: Color(0xFF76D3FF),
                          valueIndicatorTextStyle: TextStyle(fontFamily: "Auth",fontWeight: FontWeight.w700,fontSize: 20),
                       valueIndicatorShape:PaddleSliderValueIndicatorShape(),
                      ),
                      child: Slider(
                        min: 18,
                        max: 70,
                        value: value.toDouble(),
                        divisions: 52,
                        inactiveColor: Colors.grey,
                        activeColor:  Color(0xFFD89FFF),
                        label: "${value.round().toString()} Years",
                        onChanged: (val) {
                          setState(() {
                            value = val.toInt();
                          });
                        },
                      ),
                    ),
                  ),
                  Image(image: AssetImage("assets/images/old.png"),
                    height: 70,
                    width: 70,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 0, 50, 20),
              child: Container(
                height: 48,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFD89FFF),
                      Color(0xFF76D3FF),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontFamily: "Auth"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





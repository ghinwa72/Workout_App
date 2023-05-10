import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'package:workoutlogin/view/screens/weight_screen.dart';
import '../components/height_components/height_slider.dart';
import 'package:get/get.dart';
class HeightScreen extends StatefulWidget {
  const HeightScreen({Key? key}) : super(key: key);

  @override
  State<HeightScreen> createState() => _HeightScreenState();
}

class _HeightScreenState extends State<HeightScreen> {
  var height = 170;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Center(
            child: Text(
              "Please select your\nheight",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Auth",
                  fontSize: 40,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Stack(
            children: [
              Positioned(
                right: -3,
                top: 23,
                bottom: 10,
                child: Transform(
                  transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0),
                  child: Container(
                    margin: EdgeInsets.only(top: 45),
                    height:MediaQuery.of(context).size.height/1.2,
                    child: SfLinearGauge(
                      showAxisTrack: false,
                      showLabels: false,
                      maximumLabels: 3,
                      minorTickStyle: LinearTickStyle(
                          length: 8, thickness: 1.2, color: Colors.grey),
                      minorTicksPerInterval: 3,
                      showTicks: true,
                      orientation: LinearGaugeOrientation.vertical,
                      majorTickStyle: LinearTickStyle(
                        length: 25,
                        thickness: 1.5,
                        color:
                        // widget.selected == 0
                        //     ? Colors.blueAccent:
                        Color(0xFF76D3FF),
                      ),
                      axisLabelStyle:
                      TextStyle(fontSize: 12.0, color: Colors.black),
                      animateRange: true,
                      axisTrackStyle: LinearAxisTrackStyle(
                        borderWidth: 0,
                        color: Colors.grey.shade600,
                        thickness: 1,
                        borderColor: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40),
                height: MediaQuery.of(context).size.height / 1.4,
                child: HeightSlider(
                  height: height,
                  onChange: (val) => setState(() => height = val),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 15, 50, 0),
            child: GestureDetector(
              onTap: (){
                Get.to(WeightScreen(),);
              },
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
          )
        ],
      ),
    );
  }
}
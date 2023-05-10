import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../Constants/Images.dart';
import 'onboarding_model.dart';

List<onboardingModel> onBoardingList = [
  onboardingModel(
    title: Stack(
      children: [
        Transform.translate(
          offset: Offset(-15.w, 2.4.h),
          child: Transform.scale(
            scale: 0.7,
            child: Image.asset("assets/images/color.png"),
          ),
        ),
        RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: ''
                    '\"Start \n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'LondrinaOutline',
                  fontSize: 32.sp,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
              TextSpan(
                text: ' Your Morning With Sport\"',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontFamily: 'LondrinaOutline',
                  fontSize: 22.sp,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    describtion:
        "Exercise in the morning boosts energy, mood, productivity, physical health, and reduces stress.",
    image: "${Images.gif1}",
  ),
  onboardingModel(
    title: Stack(
      children: [
        Transform.translate(
          offset: Offset(20.w, 1.5.h),
          child: Transform.scale(
            scale: 0.8,
            child: Image.asset("assets/images/color.png"),
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: '\"Track your ',
                style: TextStyle(
                  height: 1,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Auth',
                  fontSize: 21.sp,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
              TextSpan(
                text: 'progress',
                style: TextStyle(
                  height: 1,
                  //backgroundColor: Color(0xff76D3FF),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Auth',
                  fontSize: 27.sp,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
              TextSpan(
                text: ' and grow \nbit by bit.\"',
                style: TextStyle(
                  height: 1,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Auth',
                  fontSize: 21.sp,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    describtion: "Small steps lead to big gains",
    image: "${Images.gif3}",
  ),
  onboardingModel(
    title: Stack(
      children: [
        Transform.translate(
          offset: Offset(5.w, 4.h),
          child: Transform.scale(
            scale: 0.6,
            child: Image.asset("assets/images/color.png"),
          ),
        ),
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: '\"Get challenges that you will ',
                style: TextStyle(
                  height: 1,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Auth',
                  fontSize: 21.sp,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
              TextSpan(
                text: '\n love ',
                style: TextStyle(
                  height: 1,
                  // backgroundColor: Color(0xff76D3FF),
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Auth',
                  fontSize: 27.sp,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
              TextSpan(
                text: 'to do.\"',
                style: TextStyle(
                  height: 1,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Auth',
                  fontSize: 21.sp,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    describtion: "Embrace exciting challenges to fuel your progress",
    image: "${Images.gif2}",
  ),
];

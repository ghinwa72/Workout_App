import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../Constants/Images.dart';
import 'onboarding_model.dart';

List<onboardingModel> onBoardingList = [
  onboardingModel(
    title: RichText(
      textAlign: TextAlign.end,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'No Start',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: 'Auth',
              fontSize: 32.sp,
              color: Colors.black,
              letterSpacing: 1,
            ),
          ),
          TextSpan(
            text: ' Your Morning With Sport',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontFamily: 'Auth',
              fontSize: 22.sp,
              color:Colors.black,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    ),
    describtion:"Exercise in the morning boosts energy, mood, productivity, physical health, and reduces stress.",
    image: "${Images.gif1}",
  ),
  onboardingModel(
    title: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'Track your ',
            style: TextStyle(
              height: 1,
              fontWeight: FontWeight.bold,
              fontFamily: 'BebasNeue',
              fontSize: 21.sp,
              color: Colors.black,
              letterSpacing: 1,
            ),
          ),
          TextSpan(
            text: 'progress',
            style: TextStyle(
              height: 1,
              backgroundColor: Color(0xff76D3FF),
              fontWeight: FontWeight.bold,
              fontFamily: 'BebasNeue',
              fontSize: 27.sp,
              color: Colors.black,
              letterSpacing: 1,
            ),
          ),
          TextSpan(
            text: ' and grow \nbit by bit.',
            style: TextStyle(
              height: 1,
              fontWeight: FontWeight.bold,
              fontFamily: 'BebasNeue',
              fontSize: 21.sp,
              color: Colors.black,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    ),
    describtion: "Small steps lead to big gains",
    image: "${Images.gif3}",
  ),
  onboardingModel(
    title: RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: 'Get challenges that you will ',
            style: TextStyle(
              height: 1,
              fontWeight: FontWeight.bold,
              fontFamily: 'BebasNeue',
              fontSize: 21.sp,
              color: Colors.black,
              letterSpacing: 1,
            ),
          ),
          TextSpan(
            text: '\n love ',
            style: TextStyle(
              height: 1,
              backgroundColor: Color(0xff76D3FF),
              fontWeight: FontWeight.bold,
              fontFamily: 'BebasNeue',
              fontSize: 27.sp,
              color: Colors.black,
              letterSpacing: 1,
            ),
          ),
          TextSpan(
            text: 'to do.',
            style: TextStyle(
              height: 1,
              fontWeight: FontWeight.bold,
              fontFamily: 'BebasNeue',
              fontSize: 21.sp,
              color: Colors.black,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    ),
    describtion: "Embrace exciting challenges to fuel your progress",
    image: "${Images.gif2}",
  ),
];

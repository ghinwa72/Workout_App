import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:workoutlogin/view/screens/auth_screen.dart';
import 'package:workoutlogin/view/screens/height_screen.dart';
import 'package:workoutlogin/view/screens/level_screen.dart';
import 'package:workoutlogin/view/screens/onboarding_screen.dart';
import 'package:workoutlogin/view/screens/target_muscle_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:workoutlogin/view/screens/tester.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Sizer(builder: (BuildContext context, Orientation orientation, DeviceType deviceType) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home:LevelScreen() ,
      );
    },);
  }
}

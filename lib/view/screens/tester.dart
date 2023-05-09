import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:ui' as ui;
class RContainer extends StatelessWidget {
  const RContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
     Center(
       child:BackdropFilter(
         filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
         child: Container(
           height: 120,
           width: 52,
           decoration: BoxDecoration(
             border: Border.all(color: Colors.yellow,width: 5),
             color: Colors.red.withOpacity(0.7),
             borderRadius: BorderRadius.circular(50),
           ),
         ),
       ),
         ),
       );
  }
}

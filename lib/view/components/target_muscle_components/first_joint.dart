import 'package:flutter/material.dart';

class FirstJoint extends StatelessWidget {
  FirstJoint({ required this.top,
    required this.color,
    Key? key,
  }) : super(key: key);
  double top;
  Color color;


  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 125,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: 15,
        height: 2,
        color:color,
      ),
    );
  }
}
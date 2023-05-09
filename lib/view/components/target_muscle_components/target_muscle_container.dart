import 'package:flutter/material.dart';

class TargetMuscleContainer extends StatelessWidget {
  TargetMuscleContainer({
    required this.textColor,
    required this.color,
    required this.text,
    Key? key,
  }) : super(key: key);
  String text;
  Color color;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      height: 45,
      width: 110,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Auth",
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: textColor,
          ),
        ),
      ),
    );
  }
}

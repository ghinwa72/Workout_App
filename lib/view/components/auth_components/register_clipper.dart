import 'package:flutter/material.dart';

class RegisterClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 30.0;
    var path = Path();
    path.moveTo(size.width, size.height * 0.33);
    path.lineTo(size.width, size.height - roundnessFactor);
    path.quadraticBezierTo(
        size.width, size.height, size.width - roundnessFactor, size.height);
    path.lineTo(roundnessFactor, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - roundnessFactor);
    path.lineTo(0, roundnessFactor * 1.7);
    path.quadraticBezierTo(
        10, roundnessFactor, roundnessFactor * 1.5, roundnessFactor * 1.5);
    path.lineTo(size.width - roundnessFactor * 0.6,
        size.height * 0.33 - roundnessFactor * 0.3);
    path.quadraticBezierTo(size.width, size.height * 0.33, size.width,
        size.height * 0.33 + roundnessFactor);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

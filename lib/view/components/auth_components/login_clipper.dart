import 'dart:math';

import 'package:flutter/material.dart';

class LoginClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 25.0;
    var path = Path();
    path.moveTo(0, size.height * 0.67); // flip the starting point vertically
    path.lineTo(0, roundnessFactor); // flip the ending point vertically
    path.quadraticBezierTo(
        0, 0, roundnessFactor, 0); // flip control points vertically
    path.lineTo(size.width - roundnessFactor, 0);
    path.quadraticBezierTo(size.width, 0, size.width, roundnessFactor);
    path.lineTo(size.width, size.height - roundnessFactor * 1.45);
    path.quadraticBezierTo(
        size.width - 10,
        size.height - roundnessFactor,
        size.width - roundnessFactor * 1.5,
        size.height - roundnessFactor * 1.5);
    // flip control points vertically
    path.lineTo(roundnessFactor * 0.6,
        size.height * (1 - 0.33) + roundnessFactor * (1 - 0.3));
    // flip ending point and control points vertically
    path.quadraticBezierTo(0, size.height * (1 - 0.33), 0,
        size.height * (1 - 0.33) - roundnessFactor);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

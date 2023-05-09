import 'package:flutter/material.dart';

class LastJoint extends StatelessWidget {
  LastJoint({
    required this.top,
    required this.left,
    required this.color,
    Key? key,
  }) : super(key: key);
  double top;
  double left;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              color:color,
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -MediaQuery.of(context).size.height / 2.2,
          left: -MediaQuery.of(context).size.width / 2.3,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 1.5,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white70, Color(0xFFD89FFF), Color(0xFF76D3FF)],
              ),
              color: Colors.lightBlueAccent.shade700,
              shape: BoxShape.circle,
            ),
          ),
        ),
        Positioned(
          left: MediaQuery.of(context).size.width / 1.5,
          bottom: -MediaQuery.of(context).size.height / 1.3,
          child: Container(
            height: MediaQuery.of(context).size.height * 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFD89FFF),
                  Color(0xFF76D3FF),
                ],
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}

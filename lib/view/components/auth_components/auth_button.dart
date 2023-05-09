import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  AuthButton({
    required this.color1,
    required this.color2,
    required this.text,
    Key? key,
  }) : super(key: key);
  String text;
  Color color1;
  Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color1,
              color2,
            ],
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(40),
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          )),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontFamily: "Auth"),
        ),
      ),
    );
  }
}

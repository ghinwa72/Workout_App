import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({required this.labelText, required this.icon});

  String labelText;
  Icon icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black54,
            fontFamily: "Auth"),
        suffixIcon: icon,
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFD89FFF),
          ),
        ),
      ),
    );
  }
}

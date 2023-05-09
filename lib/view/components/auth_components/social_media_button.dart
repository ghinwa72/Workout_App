import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  SocialMediaButton({
    required this.color,
    required this.image,
    Key? key,
  }) : super(key: key);

  String image;
  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 52,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Image(
          image: AssetImage(image),
        ),
      ),
    );
  }
}

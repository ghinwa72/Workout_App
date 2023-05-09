import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/Images.dart';

class ImageScaleController extends GetxController {
  final weight = 50.0.obs;
  final scaleFactor = 1.3.obs;
  final minimum = 50.0;
  final maximum = 250.0;
  final List<Color> tickColors = List.generate(51, (index) => Colors.grey.shade400);

  void onSliderChanged(double value) {
    // set the new value of the weight
    weight.value = value;

    // update the color of marker pointer based on weight value
    if (weight.value <= 33) {
      //controller.myColor.value = Colors.orange;
    } else if (weight.value <= 66) {
      //controller.myColor.value = Colors.yellow;
    } else {
      //controller.myColor.value = Colors.green;
    }
  }


}

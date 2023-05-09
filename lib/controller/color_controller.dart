import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorController extends GetxController {
  var selectedItemIndex = -1.obs;

  void onItemPressed(int index) {
    selectedItemIndex = index;
    update();
  }
}

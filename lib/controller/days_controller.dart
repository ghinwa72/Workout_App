import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DaysController extends GetxController {
  var selectedItems = <int>[].obs;

  void onItemPressed(int index) {
    if (selectedItems.contains(index)) {
      selectedItems.remove(index);
    } else {
      selectedItems.add(index);
    }
    update();
  }
}

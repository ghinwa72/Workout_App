import 'package:flutter/material.dart';
import 'package:get/get.dart';


class GenderController extends GetxController {
  var _currentIndex = 0.obs;

  int get currentIndex => _currentIndex.value;

  void onPageChanged(int index, PageController controller) {
    _currentIndex.value = index;
    controller.jumpToPage(index);
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorChangingController extends GetxController {
  RxBool enable1 = false.obs;
  RxBool enable2= false.obs;
  RxBool enable3 = false.obs;
  RxBool enable4 = false.obs;
  void changeColor() {
   enable1.value= !enable1.value;
   enable2.value= !enable2.value;
   enable3.value= !enable3.value;
   enable4.value= !enable4.value;
  }
}
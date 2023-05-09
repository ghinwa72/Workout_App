import 'package:get/get.dart';

class HeightController extends GetxController {
  var height = 170.obs;

  void setHeight(int val) {
    height.value = val;
  }
}
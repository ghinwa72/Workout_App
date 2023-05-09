import 'package:get/get.dart';

class RegisterController extends GetxController {
  RxBool showRegister = false.obs;

  void toggleRegister() {
    showRegister.value = !showRegister.value;
  }
}
import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void login() {
    if (email.value == 'azzanisham@gmail.com' &&
        password.value == 'azzanisham123') {
      Get.snackbar('Success', 'Login successful');
      Get.offNamed('/home');
    } else {
      Get.snackbar('Error', 'Incorrect email or password');
    }
  }
}

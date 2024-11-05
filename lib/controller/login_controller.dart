import 'package:get/get.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void login() {
    if (email.value.isEmpty || password.value.isEmpty) {
      Get.snackbar('Error', 'Email or password cannot be empty',
          duration: 1.seconds);
      return;
    }

    if (email.value == 'azzan@gmail.com' && password.value == 'azzan123') {
      Get.snackbar('Success', 'Login successful', duration: 2.seconds);
      Get.offNamed('/home');
    } else {
      Get.snackbar('Error', 'Incorrect email or password', duration: 1.seconds);
    }
  }
}

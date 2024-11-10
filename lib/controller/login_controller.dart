import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  var email = ''.obs;
  var password = ''.obs;
  var isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  Future<void> login() async {
    if (email.value.isEmpty || password.value.isEmpty) {
      Get.snackbar('Error', 'Email or password cannot be empty',
          duration: 1.seconds);
      return;
    }

    if (email.value == 'azzan@gmail.com' && password.value == 'azzan123') {
      Get.snackbar('Success', 'Login successful', duration: 2.seconds);

      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);

      Get.offNamed('/home');
    } else {
      Get.snackbar('Error', 'Incorrect email or password', duration: 1.seconds);
    }
  }

  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('isLoggedIn');
    Get.offAllNamed('/');
  }
}

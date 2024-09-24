import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/login_controller.dart';
import 'package:getx_apps/widgets/text_field.dart';
import 'package:getx_apps/widgets/elevated_button.dart';
import 'package:getx_apps/widgets/appbar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(
        title: 'Login to your account',
        showCartIcon: false,
        fontSize: 24,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),

            MyTextField(
              label: 'Email',
              hintText: 'Enter your email address',
              icon: Icons.email,
              onChanged: (value) {
                loginController.email.value = value;
              },
            ),

            Obx(() => MyTextField(
                  label: 'Password',
                  hintText: 'Enter your password',
                  isPassword: true,
                  isPasswordVisible: !loginController.isPasswordHidden.value,
                  icon: loginController.isPasswordHidden.value
                      ? Icons.visibility_off
                      : Icons.visibility,
                  onIconPressed: loginController.togglePasswordVisibility,
                  onChanged: (value) {
                    loginController.password.value = value;
                  },
                )),

            const SizedBox(height: 20),

            MyButton(
              onPressed: () {
                loginController.login(); 
              },
              category: 'Login',
              backgroundColor: Colors.grey.shade300,
              textColor: Colors.black,
              borderRadius: 10.0,
              showIcon: false,
            ),

            const SizedBox(height: 20),
            Center(
              child: Text('Or', style: TextStyle(color: Colors.grey.shade700)),
            ),
            const SizedBox(height: 20),

            MyButton(
              onPressed: () {},
              category: 'Login with Google',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: 10.0,
              showIcon: true,
              icon: Icons.login,
            ),

            const SizedBox(height: 10),

            MyButton(
              onPressed: () {},
              category: 'Login with Facebook',
              backgroundColor: Colors.blue.shade900,
              textColor: Colors.white,
              borderRadius: 10.0,
              showIcon: true,
              icon: Icons.facebook,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/login_controller.dart';
import 'package:getx_apps/widgets/text.dart';
import 'package:getx_apps/widgets/text_field.dart';
import 'package:getx_apps/widgets/elevated_button.dart';
import 'package:getx_apps/widgets/appbar.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.find();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(
        title: 'Login to your account',
        showCartIcon: false,
        fontSize: 24,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            MyText(
                text: 'It’s great to see you again.',
                textStyle: GoogleFonts.montserrat(
                    color: const Color(0xff808080),
                    fontWeight: FontWeight.w500)),

            const SizedBox(height: 30),

            // Text Field untuk Email
            MyTextField(
              label: 'Email',
              hintText: 'Enter your email address',
              icon: Icons.email,
              onChanged: (value) {
                loginController.email.value = value;
              },
            ),

            // Text Field untuk Password
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

            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {},
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Forgot your password? ',
                        style: GoogleFonts.montserrat(
                          fontSize: 11,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: 'Reset your password',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                          color: Colors.black,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Tombol Login
            MyButton(
              onPressed: () {
                loginController.login();
              },
              category: 'Login',
              backgroundColor: Colors.black,
              textColor: Colors.white,
              borderRadius: 10.0,
              showIcon: false,
              showBorder: false,
            ),

            const SizedBox(height: 20),

            // Garis dengan Teks "Or"
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey.shade300,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Or',
                    style: TextStyle(color: Colors.grey.shade700),
                  ),
                ),
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey.shade300,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Tombol Login dengan Google
            MyButton(
              onPressed: () {},
              category: 'Login with Google',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: 10.0,
              showIcon: true,
              iconWidget: Image.asset(
                'assets/images/google_icon.png',
                width: 24.0,
                height: 24.0,
              ),
            ),

            const SizedBox(height: 10),

            // Tombol Login dengan Facebook
            MyButton(
              onPressed: () {},
              category: 'Login with Facebook',
              backgroundColor: const Color(0xff1877F2),
              textColor: Colors.white,
              borderRadius: 10.0,
              showIcon: true,
              showBorder: false,
              icon: Icons.facebook,
            ),
          ],
        ),
      ),
    );
  }
}

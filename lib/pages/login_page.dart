import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/login_controller.dart';
import 'package:getx_apps/widgets/divider_with_text.dart';
import 'package:getx_apps/widgets/text.dart';
import 'package:getx_apps/widgets/text_field.dart';
import 'package:getx_apps/widgets/elevated_button.dart';
import 'package:getx_apps/widgets/appbar.dart';
import 'package:getx_apps/widgets/text_span.dart';
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
                  color: const Color(0xff808080), fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 30),
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
            Align(
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {},
                child: MyTextSpan(
                  normalText: 'Forgot your password? ',
                  highlightedText: 'Reset your password',
                  onTap: () {},
                ),
              ),
            ),
            const SizedBox(height: 20),
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
            const MyDivText(
              text: 'Or',
              isThick: true,
              isColored: true,
            ),
            const SizedBox(height: 20),
            MyButton(
              onPressed: () {},
              category: 'Login with Google',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: 10.0,
              showIcon: true,
              isIconLeft: true,
              iconWidget: Image.asset(
                'assets/images/google_icon.png',
                width: 24.0,
                height: 24.0,
              ),
            ),
            const SizedBox(height: 10),
            MyButton(
              onPressed: () {},
              category: 'Login with Facebook',
              backgroundColor: const Color(0xff1877F2),
              textColor: Colors.white,
              borderRadius: 10.0,
              showIcon: true,
              isIconLeft: true,
              showBorder: false,
              icon: Icons.facebook,
            ),
          ],
        ),
      ),
    );
  }
}

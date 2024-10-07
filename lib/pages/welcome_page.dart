import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/widgets/elevated_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Center(
              child: Image.asset(
                "assets/images/eiger_logo.png",
                height: 280,
                width: 280,
                fit: BoxFit.contain,
              ),
            ),
            const Spacer(),
            MyButton(
              onPressed: () {
                Get.offAllNamed('/login');
              },
              category: 'Get Started',
              backgroundColor: Colors.black,
              textColor: Colors.white,
              showBorder: false,
              showIcon: true,
              icon: Icons.arrow_forward_rounded,
            )
          ],
        ),
      ),
    );
  }
}

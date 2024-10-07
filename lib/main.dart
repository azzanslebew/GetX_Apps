import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/bindings/bindings.dart';
import 'package:getx_apps/pages/home_page.dart';
import 'package:getx_apps/pages/login_page.dart';
import 'package:getx_apps/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const WelcomePage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(
            name: '/home', page: () => const HomePage(), binding: MyBindings()),
      ],
    );
  }
}

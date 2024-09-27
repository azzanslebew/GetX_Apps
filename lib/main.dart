import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/bindings/bindings.dart';
import 'package:getx_apps/pages/home_page.dart';
import 'package:getx_apps/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
            name: '/', page: () => const LoginPage(), binding: MyBindings()),
        GetPage(
          name: '/home',
          page: () => const HomePage(),
          binding: MyBindings(),
        ),
      ],
    );
  }
}

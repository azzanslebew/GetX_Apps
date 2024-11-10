import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/bindings/bindings.dart';
import 'package:getx_apps/pages/home_page.dart';
import 'package:getx_apps/pages/login_page.dart';
import 'package:getx_apps/pages/welcome_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'pages/cart_page/cart_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

  runApp(MyApp(isLoggedIn: isLoggedIn));
}

class MyApp extends StatelessWidget {
  final bool isLoggedIn;
  const MyApp({super.key, required this.isLoggedIn});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      initialRoute: isLoggedIn ? '/home' : '/',
      getPages: [
        GetPage(name: '/', page: () => const WelcomePage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(
            name: '/home', page: () => const HomePage(), binding: MyBindings()),
        GetPage(name: '/cart', page: () => const CartPage()),
      ],
    );
  }
}

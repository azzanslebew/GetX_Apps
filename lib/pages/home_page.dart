import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/bottom_nav_controller.dart';
import 'package:getx_apps/pages/menus/explore.dart';
import 'package:getx_apps/pages/menus/home.dart';
import 'package:getx_apps/pages/menus/notifications.dart';
import 'package:getx_apps/pages/menus/account.dart';
import 'package:getx_apps/widgets/bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController = Get.find();

    final List<Widget> menus = [
      const Home(),
      const Explore(),
      const Notifications(),
      const Account()
    ];

    return Obx(() {
      return Scaffold(
        backgroundColor: Colors.white,
        body: menus[bottomNavController.selectedIndex.value],
        bottomNavigationBar: MyBottomNavBar(
          currentIndex: bottomNavController.selectedIndex.value,
          onTap: bottomNavController.changeIndexMenu,
        ),
      );
    });
  }
}

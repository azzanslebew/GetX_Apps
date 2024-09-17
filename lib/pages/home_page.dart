import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/bottom_nav_controller.dart';
import 'package:getx_apps/pages/menus/explore.dart';
import 'package:getx_apps/pages/menus/home.dart';
import 'package:getx_apps/pages/menus/notifications.dart';
import 'package:getx_apps/pages/menus/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavController bottomNavController =
        Get.put(BottomNavController());

    final List<Widget> menus = [
      const Home(),
      const Explore(),
      const Notifications(),
      const Profile()
    ];
    return Obx(() {
      return Scaffold(
        body: menus[bottomNavController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: bottomNavController.selectedIndex.value,
          onTap: bottomNavController.changeIndexMenu,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.map_rounded), label: 'Explore'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'Notification'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        ),
      );
    });
  }
}

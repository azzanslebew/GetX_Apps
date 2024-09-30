import 'package:get/get.dart';
import 'package:getx_apps/controller/bottom_nav_controller.dart';
import 'package:getx_apps/controller/category_controller.dart';
import 'package:getx_apps/controller/login_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BottomNavController());
    Get.lazyPut(() => CategoryController());
    Get.lazyPut(() => LoginController());
  }
}
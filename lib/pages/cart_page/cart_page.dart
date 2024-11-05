import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/responsive_controller.dart';
import 'cart_mobile_layout.dart';
import 'cart_tablet_layout.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ResponsiveController responsiveController = Get.put(ResponsiveController());

    return LayoutBuilder(
      builder: (context, constraints) {
        responsiveController.updateScreenWidth(constraints.maxWidth);
        return Obx(() {
          if (responsiveController.isMobile()) {
            return const CartMobileLayout(); // Layout untuk mobile
          } else {
            return const CartTabletLayout(); // Layout untuk tablet
          }
        });
      },
    );
  }
}

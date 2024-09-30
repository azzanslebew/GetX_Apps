import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/explore_controller.dart';
import 'package:getx_apps/widgets/appbar.dart';
import 'package:getx_apps/widgets/image_card.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    final ExploreController exploreController = Get.find();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const MyAppBar(title: 'Explore', fontSize: 24),
      body: ListView.builder(
        itemCount: exploreController.imageItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: Obx(() {
              final item = exploreController.imageItems[index];
              return MyImageCard(
                imagePath: item['imagePath']!,
              );
            }),
          );
        },
      ),
    );
  }
}

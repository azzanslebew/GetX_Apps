import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/category_controller.dart';
import 'package:getx_apps/widgets/elevated_button.dart';

class CategoryButton extends StatelessWidget {
  final String category;
  final CategoryController controller = Get.find();

  CategoryButton(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isSelected = controller.selectedCategory.value == category;
      return Container(
        padding: const EdgeInsets.only(right: 8),
        child: MyButton(
          onPressed: () {
            controller.selectCategory(category);
          },
          borderRadius: 10,
          elevation: 0,
          backgroundColor: isSelected ? Colors.black : Colors.white,
          textColor: isSelected ? Colors.white : Colors.black,
          category: category,
          isSelected: isSelected, 
        ),
      );
    });
  }
}

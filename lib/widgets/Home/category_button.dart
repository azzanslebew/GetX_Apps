import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/category_controller.dart';

class CategoryButton extends StatelessWidget {
  final String category;
  final CategoryController controller = Get.put(CategoryController());

  CategoryButton(this.category, {super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      bool isSelected = controller.selectedCategory.value == category;
      return Container(
        padding: const EdgeInsets.only(right: 8),
        child: ElevatedButton(
          onPressed: () {
            controller.selectCategory(category);
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                style: BorderStyle.solid,
                color:
                    isSelected ? Colors.transparent : const Color(0xffE6E6E6),
              ),
            ),
            backgroundColor: isSelected ? Colors.black : Colors.white,
            foregroundColor: isSelected ? Colors.white : Colors.black,
            elevation: 0,
          ),
          child: Text(category),
        ),
      );
    });
  }
}

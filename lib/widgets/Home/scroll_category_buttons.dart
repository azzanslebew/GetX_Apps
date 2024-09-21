import 'package:flutter/material.dart';
import 'package:getx_apps/widgets/Home/category_button.dart';

class ScrollCategoryButtons extends StatelessWidget {
  final List<String> categories;

  const ScrollCategoryButtons({super.key, required this.categories});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            categories.map((category) => CategoryButton(category)).toList(),
      ),
    );
  }
}

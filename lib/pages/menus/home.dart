import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_apps/controller/category_controller.dart';
import 'package:getx_apps/widgets/home/product_card.dart';
import 'package:getx_apps/widgets/home/scroll_category_buttons.dart';
import 'package:getx_apps/widgets/home/search_filter_bar.dart';
import 'package:getx_apps/widgets/appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final CategoryController categoryController = Get.put(CategoryController());

    return Scaffold(
      appBar: const MyAppBar(title: 'Discover'),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 16),
                  child: SearchFilterBar(),
                ),
                const ScrollCategoryButtons(categories: [
                  'All',
                  'Shirts',
                  'Pants',
                  'Shoes',
                  'Accessories',
                  'Bags',
                  'Jackets',
                ]),
                const SizedBox(height: 16),
                Obx(() {
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: categoryController.products.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 16,
                      childAspectRatio: 0.5,
                    ),
                    itemBuilder: (context, index) {
                      var product = categoryController.products[index];
                      return ProductCard(
                        imageUrl: product['image']!,
                        title: product['title']!,
                        price: product['price']!,
                      );
                    },
                  );
                }),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

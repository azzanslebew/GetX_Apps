import 'package:flutter/material.dart';
import 'package:getx_apps/widgets/Home/scroll_category_buttons.dart';
import 'package:getx_apps/widgets/Home/search_filter_bar.dart';
import 'package:getx_apps/widgets/appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(title: 'Discover'),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 16, bottom: 16),
                child: SearchFilterBar(),
              ),
              ScrollCategoryButtons(categories: [
                'All',
                'Shirts',
                'Pants',
                'Shoes',
                'Accessories',
                'Bags',
                'Jackets',
                'Slippers'
              ]),
            ],
          ),
        ),
      ),
    );
  }
}

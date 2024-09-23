import 'package:flutter/material.dart';
import 'package:getx_apps/widgets/home/filter_button.dart';
import 'package:getx_apps/widgets/home/search_bar.dart';

class SearchFilterBar extends StatelessWidget {
  const SearchFilterBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: MySearchBar(),
        ),
        SizedBox(width: 8),
        MyFilterButton(),
      ],
    );
  }
}
